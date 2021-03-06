'use strict';
app.controller('AppPortalController', ['$rootScope', '$scope', 'ngAppSettings', '$location'
    , 'CommonService', 'AuthService', 'TranslatorService', 'GlobalSettingsService', 'RoleService',
    function ($rootScope, $scope, ngAppSettings, $location
        , commonService, authService, translatorService, globalSettingsService, roleServices) {
        $scope.isInit = false;
        $scope.pageTagName = '';
        $scope.pageTagTypeName = '';
        $scope.pageTagType = 0;
        $scope.isAdmin = false;
        $scope.translator = translatorService;
        $rootScope.globalSettingsService = globalSettingsService;
        $scope.lang = null;
        $scope.settings = {};
        $scope.init = function () {
            if (!$rootScope.isBusy) {
                $rootScope.isBusy = true;
                commonService.fillAllSettings($scope.lang).then(function (response) {
                    if ($rootScope.globalSettings) {
                        authService.fillAuthData().then(function (response) {
                            $rootScope.authentication = authService.authentication;
                            if (authService.authentication && authService.authentication.isAuth) {
                                $scope.isAdmin = authService.authentication.isAdmin;
                                if (!$scope.isAdmin) {

                                    roleServices.getPermissions().then(function (response) {

                                        if (response && response.isSucceed) {

                                            $scope.isInit = true;
                                            $rootScope.isInit = true;
                                            $scope.roles = response.data;
                                            $rootScope.isBusy = false;
                                            $scope.$apply();
                                        }
                                    });
                                }
                            }
                            else {
                                window.top.location.href = '/init/login';
                            }
                        });
                        $rootScope.isInit = true;
                        $scope.isInit = true;
                        $rootScope.isBusy = false;
                        $scope.$apply();


                    } else {
                        window.top.location.href = '/init/login';
                    }
                });
            }
        };
        $scope.prettyJsonObj = function (obj) {
            return JSON.stringify(obj, null, '\t');
        }
        $scope.$on('$routeChangeStart', function ($event, next, current) {
            // ... you could trigger something here ...
            $scope.pageTagName = $location.$$path.toString().split('/')[2];
            $scope.pageTagTypeName = $location.$$path.toString().split('/')[3];
            if ($scope.pageTagTypeName == 'list') $scope.pageTagType = 1;
            if ($scope.pageTagTypeName == 'create') $scope.pageTagType = 2;
        });
        $rootScope.limString = function (str, max) {
            return str.substring(0, max);
        };
    }]);
