'use strict';

angular.module('app')
  .controller('AnimeCtrl', ['$scope', '$http',
    function($scope, $http) {
      $http.get('/api/animes').success(function(response){
        $scope.animes = response;
        $scope.filter = {
          creator: '',
          title: ''
        };
        $scope.setKeyword = function(value) {
          $scope.filter.keyword = value;
        };
      });
    }
  ]);
