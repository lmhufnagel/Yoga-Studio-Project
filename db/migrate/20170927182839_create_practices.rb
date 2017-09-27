class CreatePractices < ActiveRecord::Migration[5.1]
  def change
    create_table :practices do |t|
      t.string :title
      t.string :style
      t.string :teacher
      t.string :length
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
