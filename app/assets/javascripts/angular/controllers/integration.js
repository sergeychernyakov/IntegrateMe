var integrationControllers = angular.module('integrationControllers', []);

integrationControllers.controller('IntegrationListCtrl', ['$scope', 'Integration', function($scope, Integration) {
  $scope.yahoo = 'Yahoo';
  $scope.integrations = Integration.query();
}]);

integrationControllers.controller('IntegrationEditCtrl', ['$scope', 'Integration', function($scope, Integration) {
  $scope.yahoo = 'Yahoo';
  $scope.integration = Integration.get({ url: '/', id: 8 }, function(integration) {
    $scope.currentIntegration = integration.id;
  });
}]);
