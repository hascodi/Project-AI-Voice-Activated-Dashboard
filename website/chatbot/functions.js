const fs = require('fs');
const brain = require('brain.js');
const tokenizerPackage = require('wink-tokenizer');
const tokenizer = tokenizerPackage();
const stem = require('wink-porter2-stemmer');
const net = new brain.NeuralNetwork();

const savedNetworkPath = './chatbot/LSTMnetwork.json';
const trainingsDataPath = './chatbot/intents.json';

module.exports.getNeuralNetwork = async () => {
    let output;
    let outputReady = false;

    fs.readFile(savedNetworkPath, (err, data) => {
        if (err) return console.error(err);

        if (data.toString() === '') {
            trainNetwork().then(nn => {
                output = nn;
                outputReady = true;
            });
        } else {
            console.log('Using already trained network..');
            output = net.fromJSON(JSON.parse(data.toString()));
            outputReady = true;
        }
    });

    await new Promise(function (resolve, reject) {
        (function waitForNeuralNetwork(){
            if (outputReady) return resolve();
            setTimeout(waitForNeuralNetwork, 30);
        })();
    });

    return output;
}

const trainNetwork = async () => {
    console.log('Training a new network...');
    let networkReady = false; 

    fs.readFile(trainingsDataPath, (err, data) => {
        if (err) return console.error(err);

        let dataset = JSON.parse(data.toString());

        let trainingsData = [];

        dataset['intents'].forEach(intent => {
            intent['patterns'].forEach(pattern => {
                // Split words into array of seperate strings
                let tokenizedWords = tokenizer.tokenize(pattern);

                // Filter out characters or references that are not words
                let filteredWords = tokenizedWords.filter(element => {
                    return element['tag'] === 'word'
                }).map(element => {
                    return stem(element['value'].toLowerCase());
                });

                // Remove the duplicates
                uniqueWords = [...new Set(filteredWords)];

                // Make and add a valid trainings object from the pattern and intent tag
                let newElement = makeValidTrainingObject(uniqueWords, intent['tag']);
                trainingsData.push(newElement);
            });
        });

        console.log(JSON.stringify(trainingsData, null, 2));

        let netTrainingInfo = net.train(trainingsData, {
            // Defaults values --> expected validation
            iterations: 20000, // the maximum times to iterate the training data --> number greater than 0
            errorThresh: 0.001, // the acceptable error percentage from training data --> number between 0 and 1
            log: false, // true to use console.log, when a function is supplied it is used --> Either true or a function
            logPeriod: 10, // iterations between logging out --> number greater than 0
            learningRate: 0.3, // scales with delta to effect training rate --> number between 0 and 1
            momentum: 0.1, // scales with next layer's change value --> number between 0 and 1
            callback: null, // a periodic call back that can be triggered while training --> null or function
            callbackPeriod: 10, // the number of iterations through the training data between callback calls --> number greater than 0
            timeout: Infinity, // the max number of milliseconds to train for --> number greater than 0
        });

        fs.writeFile(savedNetworkPath, JSON.stringify(net.toJSON()), (err) => {
            if(err) throw err;

            console.log('Network File has been created.');
        });
        console.log(`Network training info: ${JSON.stringify(netTrainingInfo, null, 2)}`);

        networkReady = true;
    });

    await new Promise(function (resolve, reject) {
        (function waitForNeuralNetwork(){
            if (networkReady) return resolve();
            setTimeout(waitForNeuralNetwork, 30);
        })();
    });
    
    return net;
}

module.exports.sentenceToInput = (sentence) => {
    // Split words into array of seperate strings
    let tokenizedWords = tokenizer.tokenize(sentence);

    // Filter out characters or references that are not words
    let filteredWords = tokenizedWords.filter(element => {
        return element['tag'] === 'word'
    }).map(element => {
        return stem(element['value'].toLowerCase());
    });

    // Remove the duplicates
    uniqueWords = [...new Set(filteredWords)];

    // Make an input object
    return makeInputObjectWithWords(uniqueWords);
}

module.exports.getRandomResponseWithTag = async (tag) => {
    let searchCompleted = false;
    let randomResponse;
    
    fs.readFile(trainingsDataPath, (err, data) => {
        if (err) return console.error(err);

        let dataset = JSON.parse(data.toString())["intents"].filter(intent => {
            return intent['tag'] === tag;
        })[0];

        randomResponse = dataset['responses'][Math.floor(Math.random() * dataset['responses'].length)];
        searchCompleted = true;
    });

    await new Promise(function (resolve, reject) {
        (function waitForSearching(){
            if (searchCompleted) return resolve();
            setTimeout(waitForSearching, 30);
        })();
    });
    
    return randomResponse;
}

const makeValidTrainingObject = (words, tag) => {
    let inputObject = makeInputObjectWithWords(words);

    let trainingObject = {
        input: inputObject,
        output: {}
    };

    trainingObject['output'][tag] = 1;

    return trainingObject;
}

const makeInputObjectWithWords = (words) => {
    let inputObject = {};

    words.forEach(word => {
        inputObject[word] = 1;
    });

    return inputObject;
}