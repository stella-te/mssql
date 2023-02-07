// DOCUMENTATION:
// http://docs.tradingeconomics.com/?javascript#streaming

const fs = require('fs');

let myKey = require('./userKey')

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
  p = msg.price;
  arr.push(p);
  console.log(p);

  fs.writeFile('./test.txt', JSON.stringify(arr), err => {
    if (err) {
      console.error(err);
    }
    // file written successfully
  });
})

















// end
