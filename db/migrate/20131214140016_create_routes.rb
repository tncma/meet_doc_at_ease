class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.text :directions
      t.timestamps
    end
  end
end
