(function (angular) {
    angular
        .module("purchaseModule")
        .factory("purchaseAjaxService", purchaseAjaxService);

    purchaseAjaxService.$inject = ["$http"];

    function purchaseAjaxService($http) {
        var service = {
            getPurchases: getPurchasesAjax,
            filterPurchases: filterPurchasesAjax,
            getCategoriesForCurrentUser: getCategoriesForCurrentUserAjax,
            getImportances: getImportancesAjax,
            addPurchase: addPurchaseAjax
        }

        return service;

        function getPurchasesAjax(page) {
            var promise = $http({
                method: "GET",
                url: "/Purchase/GetPurchases",
                params: { page: page }
            });
            return promise;
        }
        function getCategoriesForCurrentUserAjax() {
            var promise = $http({
                method: "GET",
                url: "/Category/GetCategoriesForCurrentUser"
            });

            return promise;
        }

        function filterPurchasesAjax(searchModel, page) {
            var promise = $http({
                method: "POST",
                url: "/Purchase/GetPurchases",
                data: { searchModel: searchModel, page: page }
            });

            return promise;
        }

        function getImportancesAjax() {
            var promise = $http({
                method: "GET",
                url: "/Purchase/GetImportances"
            });

            return promise;
        }

        function addPurchaseAjax(purchase) {
            var promise = $http({
                method: "POST",
                url: "/Purchase/AddPurchase",
                data: { purchaseToAdd: purchase }
            });
            return promise;
        }
    }
})(angular);