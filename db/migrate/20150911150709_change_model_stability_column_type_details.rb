class ChangeModelStabilityColumnTypeDetails < ActiveRecord::Migration
  def change
    change_column :models, :stability, :decimal, precision: 3, scale: 1
  end
end
