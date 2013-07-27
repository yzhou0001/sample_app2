class CreateValueDrivers < ActiveRecord::Migration
  def change
    create_table :value_drivers do |t|
      t.string :name
      t.text :text

      t.timestamps
    end
  end
end
