const express = require("express");
const app = express();
const cors = require("cors");
const port = 3000;

// Setting up the public directory
app.use(express.static("public"));
app.use(cors());


app.listen(port, () => console.log(`listening on port ${port}!`));
