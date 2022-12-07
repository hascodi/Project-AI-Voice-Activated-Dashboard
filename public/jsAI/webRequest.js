let recordingTimeMS = 1000;

function wait(delayInMS) {
    return new Promise((resolve) => setTimeout(resolve, delayInMS));
}

function recordAudio() {
    return new Promise(async (resolve) => {
            let stream = await navigator.mediaDevices.getUserMedia({audio: true});
            let mediaRecorder = new MediaRecorder(stream, {mimeType: 'audio/wav'});
            let audioChunks = [];

            mediaRecorder.addEventListener("dataavailable", function (event) {
                audioChunks.push(event.data);
            });

            const start = () => {
                mediaRecorder.start();
            };

            const stop = () => {
                return new Promise((resolve) => {
                    mediaRecorder.addEventListener("stop", function () {
                        let audioBlob = new Blob(audioChunks);

                        //save audio
                        let reader = new FileReader();
                        reader.readAsDataURL(audioBlob);
                        reader.onloadend = function () {
                            let data = new FormData();
                            data.append('file', audioBlob);
                            console.log(data)
                            const xhr = new XMLHttpRequest();
                            xhr.onreadystatechange = function () {
                                if (xhr.readyState === XMLHttpRequest.DONE) {
                                    alert(xhr.response)
                                }
                            }
                            xhr.open('post', 'http://localhost:8000/uploadfile');
                            xhr.send(data);
                        }

                        resolve(audioBlob);
                    });

                    mediaRecorder.stop();
                });
            };

            start();

            await wait(recordingTimeMS);

            let audio = await stop();
            resolve(audio);
        }
    );
}
