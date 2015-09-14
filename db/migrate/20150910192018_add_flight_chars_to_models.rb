class AddFlightCharsToModels < ActiveRecord::Migration
  def change
    change_table :models do |m|
      m.integer :stability
      m.integer :speed
      m.integer :glide
      m.integer :fade
      m.integer :turn
    end
  end
end
