class CreateTaglines < ActiveRecord::Migration
  def self.up
    create_table :taglines do |t|
      t.text :copy

      t.timestamps
    end
  end

  def self.down
    drop_table :taglines
  end
end
