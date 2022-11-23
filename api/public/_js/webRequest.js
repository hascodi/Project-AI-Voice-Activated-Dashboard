let recordingTimeMS = 2000;

function wait(delayInMS) {
    return new Promise((resolve) => setTimeout(resolve, delayInMS));
}

function startRecording(stream, lengthInMS) {
    let recorder = new MediaRecorder(stream);
    let data = [];

    recorder.ondataavailable = (event) => data.push(event.data);
    recorder.start();
    console.log(`${recorder.state} for ${lengthInMS / 1000} seconds…`);

    let stopped = new Promise((resolve, reject) => {
        recorder.onstop = resolve;
        recorder.onerror = (event) => reject(event.name);
    });

    let recorded = wait(lengthInMS).then(
        () => {
            if (recorder.state === "recording") {
                recorder.stop();
                stream.getTracks().forEach((track) => track.stop());
            }
        },
    );

    return Promise.all([
        stopped,
        recorded
    ])
        .then(() => data);
}

function recordAudio() {
    console.log("Recording audio...");
    navigator.mediaDevices.getUserMedia({
        video: false,
        audio: true
    }).then((stream) => {
        preview.srcObject = stream;
        preview.captureStream = preview.captureStream || preview.mozCaptureStream;
        return new Promise((resolve) => preview.onplaying = resolve);
    }).then(() => startRecording(preview.captureStream(), recordingTimeMS))
        .then((recordedChunks) => {
            let recordedBlob = new Blob(recordedChunks, { type: "audio/wav" });
            var data = new FormData();
            data.append('file' , recordedBlob);
            var xhr = (window.XMLHttpRequest) ? new XMLHttpRequest() : new activeXObject("Microsoft.XMLHTTP");
            xhr.open( 'post', 'http://localhost:8000/uploadfile');
            xhr.send(data);
            console.log(`Successfully recorded ${recordedBlob.size} bytes of ${recordedBlob.type} media.`);
        })
        .catch((error) => {
            if (error.name === "NotFoundError") {
                console.log("Camera or microphone not found. Can't record.");
            } else {
                console.log(error);
            }
        });
}