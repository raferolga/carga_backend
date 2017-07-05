class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.belongs_to :unit, index: true
      t.string :name
      t.string :position_number
      t.string :description

      t.timestamps null: false
    end
  end
end
