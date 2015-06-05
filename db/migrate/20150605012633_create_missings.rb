class CreateMissings < ActiveRecord::Migration
  def change
    create_table :missings do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
