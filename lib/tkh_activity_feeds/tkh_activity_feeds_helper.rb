module TkhActivityFeedsHelper
  def self.included(base)
    base.send(:include, InstanceMethods)
    # base.before_action :current_user
    # base.after_action :my_method_2
  end

  module InstanceMethods
    # duplicated from action controller extension. there must be a better way
    def doer
      @doer ||= current_user ? Doer.find(current_user) : nil
    end
  end
end
