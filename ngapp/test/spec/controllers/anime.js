'use strict';

describe('Controller: AnimeCtrl', function () {

  // load the controller's module
  beforeEach(module('ngappApp'));

  var AnimeCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    AnimeCtrl = $controller('AnimeCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(scope.awesomeThings.length).toBe(3);
  });
});
