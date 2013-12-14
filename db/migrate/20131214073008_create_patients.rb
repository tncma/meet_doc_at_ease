class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :registration_number
      t.timestamps
    end
  end
end
