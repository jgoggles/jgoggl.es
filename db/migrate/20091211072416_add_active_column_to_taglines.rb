class AddActiveColumnToTaglines < ActiveRecord::Migration
  def self.up
    add_column :taglines, :active, :boolean
  end

  def self.down
    remove_column :taglines, :active
  end
end
