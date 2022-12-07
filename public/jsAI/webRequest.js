let recordingTimeMS = 1000;

function wait(delayInMS) {
    return new Promise((resolve) => setTimeout(resolve, delayInMS));
}

function recordAudio() {
    return new Promise(async (resolve) => {
            let stream = await navigator.mediaDevices.getUserMedia({audio: true});
            let mediaRecorder = new MediaRecorder(stream);
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
                        let audioUrl = URL.createObjectURL(audioBlob);

                        //save audio
                        let reader = new FileReader();
                        reader.readAsDataURL(audioBlob);
                        reader.onloadend = function () {
                            let base64data = reader.result;

                            /*let xhr = new XMLHttpRequest();
                            xhr.open("POST", "http://localhost:8000/uploadfile", true);
                            xhr.setRequestHeader("Content-Type", "application/json");
                            xhr.setRequestHeader("Access-Control-Allow-Origin", "*");
                            xhr.send(JSON.stringify({audio: base64data}));*/


                            const data = new FormData();
                            data.append('file', base64data.toString());
                            const xhr = new XMLHttpRequest();
                            xhr.onreadystatechange = function () {
                                if (xhr.readyState === XMLHttpRequest.DONE) {
                                    alert(xhr.response.text())
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
