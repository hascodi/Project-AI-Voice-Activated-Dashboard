const express = require("express");
const app = express();
const cors = require("cors");
const multer  = require('multer')
const port = 3000;

// Setting up the public directory
app.use(express.static("public"));
app.use(cors());

/*
app.listen(port, () => console.log(`listening on port ${port}!`));
var storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, 'uploads/')
    },
    filename: function (req, file, cb) {
      cb(null, Date.now() + '.wav') //Appending .jpg
    }
  })
  
  var upload = multer({ storage: storage });
app.post("/result", upload.single('file'), function(res,response){
  });


*/
