class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :content

      t.timestamps
    end
  end
end
