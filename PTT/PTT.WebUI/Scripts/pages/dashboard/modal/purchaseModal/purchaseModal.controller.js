(function (angular) {
    angular
        .module("purchaseModule")
        .controller("purchaseModalController", purchaseModalController);

    purchaseModalController.$inject = ["$scope", "$uibModalInstance", "purchaseAjaxService", "categories"];

    function purchaseModalController($scope, $uibModalInstance, purchaseAjaxService, categories) {
        $scope.purchase = {};
        $scope.categories = categories;
        $scope.importances = [];

        activate();

        function activate() {
            purchaseAjaxService.getImportances()
                .then(function (response) {
                    $scope.importances = response.data;
                }, function (error) {
                    console.error('error loading importances');
                });
        }

        $scope.addPurchase = function (purchase) {
            purchaseAjaxService.addPurchase(purchase)
                .then(function (response) {
                    location.assign("/Dashboard/Index/#purchases");
                }, function (error) {
                    console.error("error creating purchase")
                })
        }
    }

})(angular);