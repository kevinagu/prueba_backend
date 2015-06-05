class AddDescriptionToPhotoUsers < ActiveRecord::Migration
  def change
    add_column :photo_users, :description, :text
  end
end
