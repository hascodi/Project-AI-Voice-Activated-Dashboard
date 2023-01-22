jQuery(document).ready(function () {
	// console.log("Loaded");
	var $ = jQuery;
	var myRecorder = {
		objects: {
			context: null,
			stream: null,
			recorder: null,
		},
		init: function () {
			if (null === myRecorder.objects.context) {
				myRecorder.objects.context = new (window.AudioContext ||
					window.webkitAudioContext)();
			}
		},
		start: function () {
			var options = { audio: true, video: false };
			navigator.mediaDevices
				.getUserMedia(options)
				.then(function (stream) {
					myRecorder.objects.stream = stream;
					myRecorder.objects.recorder = new Recorder(
						myRecorder.objects.context.createMediaStreamSource(stream),
						{ numChannels: 1 }
					);
					myRecorder.objects.recorder.record();
				})
				.catch(function (err) {});
		},
		stop: function (listObject) {
			if (null !== myRecorder.objects.stream) {
				myRecorder.objects.stream.getAudioTracks()[0].stop();
			}
			if (null !== myRecorder.objects.recorder) {
				myRecorder.objects.recorder.stop();
				// Validate object
				if (
					null !== listObject &&
					"object" === typeof listObject &&
					listObject.length > 0
				) {
					// Export the WAV file
					myRecorder.objects.recorder.exportWAV(function (blob) {
						var reader = new FileReader();
						reader.readAsDataURL(blob);
						reader.onloadend = function () {
							var base64data = reader.result;
							$.ajax({
								type: "POST",
								url: "/translateCommand",
								// The key needs to match your method's input parameter (case-sensitive).
								data: JSON.stringify({ data: base64data }),
								contentType: "application/json; charset=utf-8",
								dataType: "json",
								success: function (response) {
									let { msg } = response;
									console.log("received:", msg);
									switch (msg) {
										case "gtDashboard3":
											window.location.href =
												"../pages/index-3.html";
											break;
										case "salesStats":
											$(
												"body > :not(.sale-statistic-area, .header-top-area)"
											).hide();
											break;
										case "uncheckTodos":
											$("input.todo-done").removeAttr("checked");
											break;
										case "sendMessage":
											$(".chat-input").val = "hey friend";
											$(".website-chat-btn").trigger("click");
											break;
										default:
											alert(msg);
											break;
									}
								},
								error: function (err) {
									console.log(err);
								},
							});
						};
					});
				}
			}
		},
	};

	// Prepare the recordings list
	var listObject = $('[data-role="recordings"]');

	// Prepare the record button
	$(".recordIcon").click(function () {
		console.log("clicked!");
		// Initialize the recorder
		myRecorder.init();

		// Get the button state
		var buttonState = !!$(this).attr("data-recording");

		// Toggle
		if (!buttonState) {
			$(this).attr("data-recording", "true");
			myRecorder.start();
		} else {
			$(this).attr("data-recording", "");
			myRecorder.stop(listObject);
		}
	});
});
