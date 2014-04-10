module.exports = function(config){
  config.set({

    basePath : '../',

    files : [
      'vendor/assets/components/angular/angular.js',
      'vendor/assets/components/angular-route/angular-route.js',
      'vendor/assets/components/angular-mocks/angular-mocks.js',
      'source/javascripts/**/*.js',
      'test/unit/**/*.js'
    ],

    autoWatch : true,

    frameworks: ['jasmine'],

    browsers : ['Chrome'],

    plugins : [
            'karma-chrome-launcher',
            'karma-firefox-launcher',
            'karma-jasmine'
            ],

    junitReporter : {
      outputFile: 'test_out/unit.xml',
      suite: 'unit'
    }

  });
};
