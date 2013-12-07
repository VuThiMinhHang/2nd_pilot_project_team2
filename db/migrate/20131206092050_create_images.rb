class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer  :album_id
      t.integer  :user_id
      t.string :image_file_name
      t.string :image_content_type
      t.string :image_file_size
      t.datetime :image_updated_at
      t.timestamps
    end
  end
end