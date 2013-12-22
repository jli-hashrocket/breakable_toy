class CreateProfileActivities < ActiveRecord::Migration
  def change
    create_table :profile_activities do |t|
      t.integer :profile_id,  null:false
      t.integer :activity_id, null:false

      t.timestamps
    end
  end
end
