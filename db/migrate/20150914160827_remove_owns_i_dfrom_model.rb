class RemoveOwnsIDfromModel < ActiveRecord::Migration
  def change
    remove_column :models, :owns_id, :integer
  end
end
