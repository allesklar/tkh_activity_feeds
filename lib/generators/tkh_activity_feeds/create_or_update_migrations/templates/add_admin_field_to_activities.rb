class AddAdminFieldToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :for_admin_only, :boolean, default: false
  end
end
