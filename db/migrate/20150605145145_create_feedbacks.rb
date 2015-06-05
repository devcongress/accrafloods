class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
