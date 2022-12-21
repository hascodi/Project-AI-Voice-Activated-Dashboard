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
    xhr.open('post', 'http://localhost:8000/uploadfile')
    xhr.send(data)
  }
  function changePage(result) {
    console.log(result)
    switch (result) {
      case 'down':
        url = 'http://localhost:8000/index.html'
        break
      case 'go':
        url = 'http://localhost:8000/pages/inbox.html'
        break
      case 'left':
        url = 'http://localhost:8000/pages/animations.html'
        break
      case 'no':
        url = 'http://localhost:8000/pages/flot-charts.html'
        break
      case 'right':
        url = 'http://localhost:8000/pages/normal-table.html'
        break
      case 'stop':
        url = 'http://localhost:8000/pages/form-elements.html'
        break
      case 'up':
        url = 'http://localhost:8000/pages/notification.html'
        break
      case 'yes':
        url = 'http://localhost:8000/pages/contact.html'
        break
    }
    window.open(url, '_top')
    console.log(result) }
}
