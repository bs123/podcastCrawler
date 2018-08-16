fs = require('fs')
fs.readFile('input180708', 'utf8', function (err,data) {
  if (err) {
    return console.log(err);
  }
  console.log(data);
});
