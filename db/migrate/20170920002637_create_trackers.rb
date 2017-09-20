class CreateTrackers < ActiveRecord::Migration[5.1]
  def change
    create_table :trackers do |t|
      t.string :name
      t.string :keywords
      t.boolean :enabled
      t.string :look_in

      t.timestamps
    end
  end
end
