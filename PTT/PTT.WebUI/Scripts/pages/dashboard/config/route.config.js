(function (angular) {
    angular
        .module("purchaseModule")
        .config(function routeConfig($routeProvider) {
            $routeProvider
                .when("/purchases", {
                    templateUrl: "/Scripts/pages/dashboard/templates/purchases.html",
                    controller: "purchaseController",
                    controllerAs: "pc"
                })
                .when("/purchases/:id", {
                    templateUrl: "/Scripts/pages/dashboard/templates/purchaseDetails.html",
                    controller: "purchaseDetailsController",
                    controllerAs: "pdc"
                })
                .when("/planned", {
                    templateUrl: "/Scripts/pages/dashboard/templates/planned.html",
                    controller: "plannedPurchasesController",
                    controllerAs: "ppc"
                })
                .when("/statistics", {
                    templateUrl: "/Scripts/pages/dashboard/templates/statistics.html",
                    controller: "statisticsController",
                    controllerAs: "sc"
                })
                .otherwise({ redirectTo: "/purchases" });
        });
})(angular);