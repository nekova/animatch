'use strict';

var app = angular.module('app', [
  'ngResource',
  'ngRoute',
  'ui.bootstrap'
]);

// app.config(['$locationProvider', function($locationProvider){
//   $locationProvider.html5Mode(true);
// }]);

app.config(['$routeProvider', '$locationProvider', function ($routeProvider, $locationProvider) {
    $locationProvider.html5Mode(true);
    $routeProvider
      .when('/', {
        templateUrl: 'views/anime.html',
        controller: 'AnimeCtrl'
      }).when('/anime', {
        templateUrl: 'views/anime.html',
        controller: 'AnimeCtrl'
      }).otherwise({
        redirectTo: '/'
      });
  }]);
