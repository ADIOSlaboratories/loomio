angular.module('loomioApp').factory 'SubscriptionSuccessModal', ->
  templateUrl: 'generated/components/group_page/subscription_success_modal/subscription_success_modal.html'
  size: 'subscription-success-modal'
  controller: ($scope, $window) ->

    $scope.openIntercom = ->
      $window.Intercom.public_api.showNewMessage()
      $scope.$close()
