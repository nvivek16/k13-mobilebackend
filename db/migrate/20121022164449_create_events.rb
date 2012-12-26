class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :place
      t.integer :category_id

      t.timestamps
    end
  end
end
