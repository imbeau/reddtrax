class AddDefaultToLookIn < ActiveRecord::Migration[5.1]
  def change
  	change_column_default :trackers, :look_in, default: 0
  end
end
