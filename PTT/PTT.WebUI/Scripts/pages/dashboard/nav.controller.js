(function (angular) {
    angular.module("purchaseModule")
        .controller("navController", navController);

    navController.$inject = ["$scope"];

    function navController($scope) {
        $scope.isPurchases = true;
        $scope.isPlanned = false;
        $scope.isStatistics = false;
    }
})(angular);