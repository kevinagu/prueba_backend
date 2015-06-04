class CreatePhotoUsers < ActiveRecord::Migration
  def change
    create_table :photo_users do |t|
      t.references :user, index: true
      t.string :photo

      t.timestamps
    end
  end
end
