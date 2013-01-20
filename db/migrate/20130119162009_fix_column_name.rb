class FixColumnName < ActiveRecord::Migration
  def up
	rename_column :workshops, :place, :description
  end

  def down
  end
end
