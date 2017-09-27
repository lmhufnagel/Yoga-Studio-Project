class CreateSignUps < ActiveRecord::Migration[5.1]
  def change
    create_table :sign_ups do |t|
      t.integer :class_id
      t.integer :student_id

      t.timestamps
    end
  end
end
