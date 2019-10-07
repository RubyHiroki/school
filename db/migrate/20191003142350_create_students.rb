class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name, null: false, limit: 20
      t.string :number, null: false, limit: 20
      t.string :subject_id, null: false
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
