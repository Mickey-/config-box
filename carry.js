var fs = require('fs');

var carryList = fs.createWriteStream('./carryList.js'),
    json = ''

carryList.on('data', function(chunk){
    json += chunk;
})
carryList.on('close', function(chunk){
    carryList.end();
    json = JSON.parse(json);
    console.log(json);
})
console.log('carry configs!');

