class AddAttachmentsImagesToHome < ActiveRecord::Migration
  def self.up
    add_column :homes, :images_file_name, :string
    add_column :homes, :images_content_type, :string
    add_column :homes, :images_file_size, :integer
    add_column :homes, :images_updated_at, :datetime
  end

  def self.down
    remove_column :homes, :images_file_name
    remove_column :homes, :images_content_type
    remove_column :homes, :images_file_size
    remove_column :homes, :images_updated_at
  end
end
