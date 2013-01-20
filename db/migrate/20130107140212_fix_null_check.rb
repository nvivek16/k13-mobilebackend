class FixNullCheck < ActiveRecord::Migration
  def up
	change_column :updates, :content, :string, :null => false
  end

  def down
  end
end