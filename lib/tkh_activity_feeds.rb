require "tkh_activity_feeds/version"
require 'tkh_activity_feeds/tkh_activity_feeds_action_controller_extension'
require 'tkh_activity_feeds/tkh_activity_feeds_helper'

module TkhActivityFeeds
  class Engine < ::Rails::Engine
    # to extend the application helper in the host app
    initializer 'tkh_activity_feeds.helper' do |app|
      ActionView::Base.send :include, TkhActivityFeedsHelper
    end
    # to extend the application_controller in the host app
    initializer 'tkh_activity_feeds.controller' do |app|
      ActiveSupport.on_load(:action_controller) do
         include TkhActivityFeedsActionControllerExtension
      end
    end
  end
end
