class CreateDiscTypes < ActiveRecord::Migration
  def change
    create_table :disc_types do |t|
      t.string :name, null: false
      t.belongs_to :model, index: true
      t.timestamps null: false
    end
  end
end
