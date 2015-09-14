class AddDiscTypeToModel < ActiveRecord::Migration
  def change
    change_table :models do |m|
      m.integer :disc_type_id
    end
  end
end
