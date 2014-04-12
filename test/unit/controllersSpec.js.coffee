describe 'PhoneListCtrl', ->
  scope = {}
  ctrl = null
  $httpBackend = null

  beforeEach(module('phoneApp'))

  beforeEach inject (_$httpBackend_, $rootScope, $controller) ->
    $httpBackend = _$httpBackend_
    $httpBackend.expectGET('phones/phones.json').
      respond([{name: 'Nexus S'},{name: 'Motorola DROID'}])

    scope = $rootScope.$new()
    ctrl = $controller('PhoneListCtrl', {$scope:scope})

  it 'shoud create "phones" model with 3 phones', ->
    expect(scope.phones).toBeUndefined()
    $httpBackend.flush()
    expect(scope.phones).toEqual([{name: 'Nexus S'},{name: 'Motorola DROID'}])

  it 'should set default value of orderProp model', ->
    expect(scope.orderProp).toBe 'age'
