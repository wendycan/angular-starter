module.exports = function(config){
  config.set({

    basePath : '../',

    files : [
      'vendor/assets/components/angular/angular.js',
      'vendor/assets/components/angular-route/angular-route.js',
      'vendor/assets/components/angular-mocks/angular-mocks.js',
      'source/javascripts/*.js.coffee',
      'test/unit/**/*.js.coffee'
    ],

    autoWatch : true,

    frameworks: ['jasmine'],

    preprocessors: {'**/*.coffee': 'coffee'},

    browsers : ['Chrome'],

    plugins : [
            'karma-chrome-launcher',
            'karma-firefox-launcher',
            'karma-jasmine',
            "karma-coffee-preprocessor"
            ],

    junitReporter : {
      outputFile: 'test_out/unit.xml',
      suite: 'unit'
    }

  });
};
