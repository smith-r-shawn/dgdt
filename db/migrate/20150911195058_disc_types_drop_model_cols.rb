class DiscTypesDropModelCols < ActiveRecord::Migration
  def change
    remove_column :disc_types, :model_id, :integer
    remove_column :disc_types, :models_id, :integer
  end
end
