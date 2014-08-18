class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :doer_id
      t.text  :message

      t.timestamps
    end
  end
end
