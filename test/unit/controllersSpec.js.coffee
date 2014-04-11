describe 'PhoneListCtrl', ->

  beforeEach(module('phoneApp'))

  it 'shoud create "phones" model with 2 phones', inject ($controller)->
    scope = {}
    ctrl = $controller('PhoneListCtrl', {$scope:scope})

    expect(scope.phones.length).toBe(2)
