﻿(function (angular) {
    angular
        .module("purchaseModule")
        .controller("purchaseController", purchaseController);

    purchaseController.$inject = ["$scope", "purchaseAjaxService", "$uibModal"];

    function purchaseController($scope, purchaseAjaxService, $uibModal) {
        $scope.purchases = [];
        $scope.search = {};
        $scope.categories = [];
        $scope.pagination = {};

        activate();

        function activate() {
            purchaseAjaxService.getPurchases(null, null)
                .then(function (response) {
                    initData(response);
                    console.log($scope.purchases);
                }, function (error) {
                    console.log("error");
                });
            getCategories();
        }

        function getCategories() {
            purchaseAjaxService.getCategoriesForCurrentUser()
                .then(function (response) {
                    $scope.categories = response.data;
                }, function (error) {
                    console.error("error");
                })
        }

        $scope.getPurchasesByCategory = function (category) {
            var search = {};
            search.Category = category;
            purchaseAjaxService.filterPurchases(search)
                .then(function (response) {
                    initData(response);
                }, function (error) {
                    console.log("error");
                })
        }

        $scope.getBySearchOptions = function (search, page) {
            purchaseAjaxService.filterPurchases(search, page)
                .then(function (response) {
                    initData(response);
                }, function (error) {
                    console.log("error");
                })
        }

        $scope.showAddDialog = function () {
            $uibModal.open({
                animation: true,
                templateUrl: "/Scripts/pages/dashboard/modal/purchaseModal/purchaseModal.html",
                size: "sm",
                controller: "purchaseModalController",
                controllerAs: "pmCtrl",
                resolve: {
                    categories: function () {
                        return $scope.categories;
                    }
                }
            });
        }

        function initData(response) {
            $scope.purchases = response.data.purchases;
            $scope.pagination.allPages = new Array(response.data.allPages);
            $scope.pagination.currentPage = response.data.currentPage;
        }
    }
})(angular);