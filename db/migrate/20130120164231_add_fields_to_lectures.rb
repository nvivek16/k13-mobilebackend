class AddFieldsToLectures < ActiveRecord::Migration
  def change
	add_column :lectures, :timings, :string
	add_column :workshops, :timings, :string
	add_column :lectures, :contact, :string
	add_column :workshops, :contact, :string
  end
end
