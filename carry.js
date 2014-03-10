var fs = require('fs'),
    list = require('./carryList.json'),
    k;

for (k in list) {
    var actualPath = list[k].replace(/^~/, process.env.HOME);
    fs.createReadStream(actualPath).pipe(fs.createWriteStream('./dist/' + k));
}

console.log('carried configs successfully!');

