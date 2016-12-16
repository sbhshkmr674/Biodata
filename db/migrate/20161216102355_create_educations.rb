class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :s_name
      t.string :y_passout
      t.string :b_name
      t.string :o_marks
      t.string :division
      t.integer :infos, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
