class ChangeModelStabilityColumnType < ActiveRecord::Migration
  def change
    change_column :models, :stability, :decimal
  end
end
