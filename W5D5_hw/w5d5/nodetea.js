const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits () {
  let first, second;

reader.question('Would you like some tea?', (res) {
  console.log(`You replied ${res}`);
  reader.question('Would you like some bicuits?', (res2) {
  console.log(`You replied ${res2}`);

    const firstRes = (res === 'yes') ? 'do':'do not';
    const secondRes = (res2 === 'yes') ? 'do':'do not';
      console.log(`So you ${firstRes} want tea and your ${secondRes} want biscuits.`);
      reader.close();
    });
  });
}
