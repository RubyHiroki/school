class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :department, null: false, limit: 20
      t.text :content, null: false, limit: 300
      t.string :teacher, limit: 30
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
