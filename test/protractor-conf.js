require('coffee-script/register');

exports.config = {
  allScriptsTimeout: 11000,

  specs: [
    'e2e/*.js.coffee'
    ],

  capabilities: {
    'browserName': 'chrome'
  },

  baseUrl: 'http://localhost:4567/',

  framework: 'jasmine',

  jasmineNodeOpts: {
    defaultTimeoutInterval: 30000
  }
};
