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

    reporters: ['progress', 'coverage'],

    preprocessors: {
      // these files will be instrumented by Istanbul
      'source/javascripts/*.js.coffee': ['coverage'],

      // JavaScript via coverage preprocessor
      // limit the CoffeeScript preprocessor to uncovered files
      'test/unit/**/*.coffee': ['coffee']
    },

    browsers : ['Chrome'],

    plugins : [
            'karma-chrome-launcher',
            'karma-firefox-launcher',
            'karma-jasmine',
            "karma-coverage",
            "karma-coffee-preprocessor"
            ],

    junitReporter : {
      outputFile: 'test_out/unit.xml',
      suite: 'unit'
    },

    coverageReporter: {
      type : 'html',
      dir : 'coverage/'
    }

  });
};
