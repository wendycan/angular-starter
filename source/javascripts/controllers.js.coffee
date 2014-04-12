phoneControllers = angular.module('phoneControllers', [])

phoneControllers.controller 'PhoneListCtrl', ['$scope', '$http', ($scope, $http)->
  $http.get('phones/phones.json').success (data)->
    $scope.phones = data

  $scope.orderProp = 'age'
]

phoneControllers.controller 'PhoneDetailCtrl', ['$scope', '$http', ($scope, $routeParams)->
  $scope.phoneId = $routeParams.phoneId
]
