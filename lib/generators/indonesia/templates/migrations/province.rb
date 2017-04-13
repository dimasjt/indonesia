class CreateProvinces < ActiveRecord::Migration<%= migration_version %>
  def self.up
    create_table :provinces, id: false do |t|
      t.integer :code, null: false, primary: true
      t.string :name, null: false
    end
  end

  def self.down
    drop_table :provinces
  end
end
