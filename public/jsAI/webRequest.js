async function recordAudio() {

    let stream = await navigator.mediaDevices.getUserMedia({video: false, audio: true});
    let recorder = new RecordRTCPromisesHandler(stream, {
        type: 'audio',
        recorderType: RecordRTC.StereoAudioRecorder, // force for all browsers
        numberOfAudioChannels: 2,
        mimeType: 'audio/wav',
        desiredSampRate: 16000,
    });

    recorder.startRecording();

    const sleep = m => new Promise(r => setTimeout(r, m));
    await sleep(1000);

    await recorder.stopRecording();
    stream.stop()
    let blob = await recorder.getBlob();
    sendData(blob)

    //save audio
    function sendData(audioBlob) {
        console.log(audioBlob)
        let data = new FormData()
        data.append('file', audioBlob)
        console.log(data)
        const xhr = new XMLHttpRequest()
        xhr.onreadystatechange = function () {
            let my_string;
            if (xhr.readyState === XMLHttpRequest.DONE) {
                my_string = JSON.parse(xhr.response);
                Toastify({
                    text: my_string,
                    duration: 3000,
                    gravity: 'bottom', // `top` or `bottom`
                    position: "left", // `left`, `center` or `right`
                    stopOnFocus: true, // Prevents dismissing of toast on hover
                    style: {
                        background: "linear-gradient(to right, #00b09b, #96c93d)",
                    },
                }).showToast();
            }
        }
        xhr.open('post', 'http://localhost:8000/uploadfile')
        xhr.send(data)
    }
}
