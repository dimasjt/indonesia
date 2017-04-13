class CreateProvinces < ActiveRecord::Migration
  def self.up
    create_table :districts, id: false do |t|
      t.integer :code, null: false, primary: true
      t.integer :regency_code, null: false
      t.string :name, null: false
    end

    add_index :districts, :regency_code
  end

  def self.down
    drop_table :districts
  end
end
