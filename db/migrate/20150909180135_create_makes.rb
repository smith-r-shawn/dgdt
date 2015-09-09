class CreateMakes < ActiveRecord::Migration
  def change
    create_table :makes do |t|
      t.string :name, null: false
      t.string :logo_url, null: false
      t.timestamps null: false
    end
  end
end
