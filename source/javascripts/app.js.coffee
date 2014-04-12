phoneApp = angular.module 'phoneApp', [
  'ngRoute',
  'phoneControllers'
]

phoneApp.config ['$routeProvider',
  ($routeProvider)->
    $routeProvider.when('/phones', {
      templateUrl: 'phone-list.html',
      controller: 'PhoneListCtrl'
      }).when('/phones/:phoneId', {
        templateUrl: 'phone-detail.html'
        controller: 'PhoneDetailCtrl'
        }).otherwise({
          redirectTo: '/phones'
          })
  ]
