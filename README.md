#Angular Starter
These are the source files that show you a basic demo, which is based on [angular](https://github.com/angular/angular.js).
##Installation
Make sure you have Ruby 1.9.3+ and Bundler installed.Then you should have middleman and bower installed.

    gem install middleman
Bower depends on Node and npm. It's installed globally using npm:

    npm install -g bower
##Start server
Change directories into your new project and start the preview server:

    cd MY_PROJECT
    middleman server
##Start test
### Running Unit Tests
These are written in
[Jasmine](https://github.com/pivotal/jasmine.git), which we run with the [Karma Test Runner](https://github.com/karma-runner/karma). We provide a Karma configuration file to run them.

    npm test
To do a single run of the tests and then exit.

    npm run test-single-run
### End to end testing

    npm run update-webdriver
    npm run protractor
If you get failure, you can refer to this wiki:<br>
[failure to run protractor](https://github.com/wendycan/angular-starter/wiki/Error-to-run-protractor)
