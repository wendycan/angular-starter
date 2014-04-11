phoneApp = angular.module('phoneApp',[])

phoneApp.controller 'PhoneListCtrl', ($scope)->
  $scope.phones = [
    {
      'name': 'Nexus S',
      'snippet': 'Fast just got faster with Nexus s.',
      'age': 1
    },
    {
      'name': 'Motorola',
      'snippet': 'The Next, Next Generation tablet.',
      'age': 2
    }
  ]
  $scope.orderProp = 'age'
