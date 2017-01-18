class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :game_name
      t.string :player_min
      t.string :player_max
      t.string :time
      t.string :age_limit

      t.timestamps
    end
  end
end
