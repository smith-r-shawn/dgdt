class CreateOwns < ActiveRecord::Migration
  def change
    create_table :owns do |t|
      t.belongs_to :person, index: true
      t.belongs_to :model, index: true
      t.integer :inventory, null: false, default: 0
      t.timestamps null: false
    end
  end
end
