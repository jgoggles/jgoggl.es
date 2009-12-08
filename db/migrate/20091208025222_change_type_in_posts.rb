class ChangeTypeInPosts < ActiveRecord::Migration
  def self.up
    rename_column :posts, :type, :post_type
  end

  def self.down
    rename_column :posts, :post_type, :type
  end
end
