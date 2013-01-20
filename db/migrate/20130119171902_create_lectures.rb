class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.string :place
      t.string :description

      t.timestamps
    end
  end
end
