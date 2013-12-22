class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :last_name, null:false
      t.string :first_name, null:false
      t.string :username, null:false
      t.string :password, null:false
      t.string :email, null:false
      t.text :bio
      t.string :photo
      t.integer :activity_id
      t.string :location
      t.string :preferred_gender
      t.datetime :last_signed_in

      t.timestamps
    end
  end
end
