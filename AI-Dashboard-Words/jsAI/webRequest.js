async function recordAudio() {
    let stream = await navigator.mediaDevices.getUserMedia({
        video: false,
        audio: true,
    })
    let recorder = new RecordRTCPromisesHandler(stream, {
        type: 'audio',
        recorderType: RecordRTC.StereoAudioRecorder, // force for all browsers
        numberOfAudioChannels: 2,
        mimeType: 'audio/wav',
        desiredSampRate: 16000,
    })

    recorder.startRecording()

    const sleep = (m) => new Promise((r) => setTimeout(r, m))
    await sleep(1000)

    await recorder.stopRecording()
    stream.stop()
    let blob = await recorder.getBlob()
    sendData(blob)

    //save audio
    function sendData(audioBlob) {
        console.log(audioBlob)
        let data = new FormData()
        data.append('file', audioBlob)
        console.log(data)
        const xhr = new XMLHttpRequest()
        xhr.onreadystatechange = function () {
            if (xhr.readyState == XMLHttpRequest.DONE) {
                let result = xhr.responseText.replaceAll('"', '')
                changePage(result)
            }
        }
        xhr.open('post', 'http://localhost:8000/word')
        xhr.send(data)
    }

}
