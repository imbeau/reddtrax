class ChangeLocationFormat < ActiveRecord::Migration[5.1]
  def change
    change_column :trackers, :look_in, :integer
  end
end
