class AddFields < ActiveRecord::Migration
  def up
	add_column :events, :timing, :string
	add_column :events, :contact, :string
  end

  def down
  end
end
