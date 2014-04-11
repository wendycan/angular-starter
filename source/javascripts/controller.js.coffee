phoneApp = angular.module('phoneApp',[])

phoneApp.controller 'PhoneListCtrl', ($scope, $http)->
  $http.get('phones/phones.json').success (data)->
    $scope.phones = data
  $scope.orderProp = 'age'
