class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :name
      t.string :place
      t.string :description

      t.timestamps
    end
  end
end
