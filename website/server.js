const express = require("express");
const app = express();
const cors = require("cors");
const port = 3000;
const projectId = "3dbfb19cba54";
const keyFilename = "../SaaSSpeech-3dbfb19cba54.json";
const speech = require("@google-cloud/speech");
const bodyParser = require("body-parser");
const chatbot = require("./chatbot/chatbot");

// Setting up the public directory
app.use(express.static("public"));
app.use(cors());
app.use(bodyParser.json({ limit: "50mb", extended: true }));

// Route to translate audio to command
app.post("/translateCommand", async (req, res) => {
	let { data } = req.body;
	data = data.split(",");
	data.splice(0, 1);
	data = data.join("");

	// // Creates a client
	const client = new speech.SpeechClient({ projectId, keyFilename });
	const audio = {
		content: data,
	};
	const config = {
		languageCode: "en-US",
	};
	const request = {
		config: config,
		audio: audio,
	};
	const [response] = await client.recognize(request);
	const transcription = response.results
		.map((result) => result.alternatives[0].transcript)
		.join("\n");

	let command = await chatbot.run(transcription);
	console.log(`Command detected: ${command}`);
	res.json({ msg: command });
});

app.listen(port, () => console.log(`listening on port ${port}!`));
