
const te = require('tradingeconomics');

let myKey = require('./userKey')

let key = myKey.key

// console.log(key);

te.login(key);

let arr = []

data = te.getMarketSnap(marketsField = 'commodities').then(function(data){
        // console.log(data)
        // p = JSON.parse(data);
        // console.log(p);
        for (var i=0; i<data.length; i++) {

          s = data[i].Symbol
          n = data[i].Name
          // console.log(s);
          // console.log(n);

          let obj = {
            symbol: s,
            name: n
          }
          // console.log(obj);
          arr.push(obj);
          // console.log(arr);
        }

    });

module.exports = {arr}
