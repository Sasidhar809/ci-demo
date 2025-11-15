const assert = require('assert');
const { greet } = require('./index');

assert.strictEqual(greet('sasi'), 'hello, sasi');
assert.strictEqual(greet(), 'hello, world');

console.log('All tests passed');
