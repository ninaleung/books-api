/* global angular */
(function() {
  "use strict";

  angular.module("app").controller("booksCtrl",
    function($scope, $http) {
      $http.get('/api/v1/books.json').then(function(response) {
        $scope.books = response.data;
      });

      $scope.toggleDetails = function(inputIndex) {
        var inputBook = $scope.books[inputIndex];
        inputBook.details = !inputBook.details;
        console.log(inputBook.details);
      };

      window.$scope = $scope;
    
    });
})();
