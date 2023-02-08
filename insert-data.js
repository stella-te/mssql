// DOCUMENTATION:
// http://docs.tradingeconomics.com/?javascript#streaming


const fs = require('fs');

let myKey = require('./userKey')
let mySym = require('./symbols.js')

let keySecretArray = myKey.key.split(':')

let key = keySecretArray[0];
let secret = keySecretArray[1]

'use strict'

var te_client = require('./te_client'),
  Client = new te_client({
    url: 'wss://stream.tradingeconomics.com/',
    key: key, //API_CLIENT_KEY
    secret: secret, //API_CLIENT_SECRET

    //reconnect: true
  })


// Client.subscribe('EURUSD:CUR')
Client.subscribe('commodities')

//For Economic calendar events: Client.subscribe('calendar')
//For News: Client.subscribe('news')

var arr = []


Client.on('message', function (msg) {
  // console.log('\n Data from TradingEconomics stream: ', msg.topic)
  // console.log(msg)

  //parse/save msg to DB
  s = msg.s;
  p = msg.price;

  var n = ''
  nameArr = mySym.arr
  // console.log(nameArr);

  // concat two names
  for (var j=0; j<nameArr.length;j++) {
    if (nameArr[j].symbol == s) {
      n = nameArr[j].name;
      // arr += sym;
      break;
    }
  }

  let obj = {
    commodity: n,
    symbol: s,
    price: p,
  }
  console.log(obj);

  arr.push(obj);



  fs.writeFile('./test.json.txt', JSON.stringify(arr), err => {
    if (err) {
      console.error(err);
    }
    // file written successfully
  });

})

















// end
