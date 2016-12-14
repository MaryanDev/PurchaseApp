(function (angular) {
    angular
        .module("purchaseModule")
        .controller("purchaseDetailsController", purchaseDetailsController);

    purchaseDetailsController.$inject = ["$scope", "$routeParams", "purchaseAjaxService"];

    function purchaseDetailsController($scope, $routeParams, purchaseAjaxService) {
        $scope.purchaseId = $routeParams.id;
    }
})(angular);