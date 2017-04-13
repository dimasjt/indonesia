class CreateRegencies < ActiveRecord::Migration<%= migration_version %>
  def self.up
    create_table :regencies, id: false do |t|
      t.integer :code, null: false, primary: true
      t.integer :province_code, null: false
      t.string :name, null: false
    end

    add_index :regencies, :province_code
  end

  def self.down
    drop_table :regencies
  end
end
