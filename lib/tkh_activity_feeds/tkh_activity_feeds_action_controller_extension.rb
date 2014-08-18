module TkhActivityFeedsActionControllerExtension
  def self.included(base)
    base.send(:include, InstanceMethods)
  end

  module InstanceMethods
    def doer
      @doer ||= current_user ? Doer.find(current_user) : nil
    end
  end
end
