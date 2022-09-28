const { getNeuralNetwork, sentenceToInput } = require("./functions");

module.exports.run = async (message) => {
	let nn = await getNeuralNetwork();
	let input = sentenceToInput(message);
	let predictions = nn.run(input);
	let maxTag = Object.keys(predictions).reduce((a, b) =>
		predictions[a] > predictions[b] ? a : b
	);
	if (predictions[maxTag] < 0.7) {
		return "Sorry, I didn't quite understand you. Try asking a different question";
	} else {
		return maxTag;
	}
};
