class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name, null: false
      t.belongs_to :make, index: true
      t.belongs_to :owns, index: true
      t.timestamps null: false
    end
  end
end
