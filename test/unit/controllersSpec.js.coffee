describe 'PhoneListCtrl', ->
  scope = {}
  ctrl = null

  beforeEach(module('phoneApp'))

  beforeEach inject ($controller) ->
    ctrl = $controller('PhoneListCtrl', {$scope:scope})

  it 'shoud create "phones" model with 3 phones', ->
    expect(scope.phones.length).toBe 3

  it 'should set default value of orderProp model', ->
    expect(scope.orderProp).toBe 'age'
