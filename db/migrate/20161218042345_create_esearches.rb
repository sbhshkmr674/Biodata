class CreateEsearches < ActiveRecord::Migration
  def change
    create_table :esearches do |t|
      t.string :y_passout
      t.string :s_name
      t.string :b_name
      t.string :o_marks
      t.string :division

      t.timestamps null: false
    end
  end
end
