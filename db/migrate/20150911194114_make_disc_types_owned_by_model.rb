class MakeDiscTypesOwnedByModel < ActiveRecord::Migration
  def change
    change_table :disc_types do |d|
      d.belongs_to :models, index: true
    end
  end
end
