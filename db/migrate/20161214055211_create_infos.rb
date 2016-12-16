class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :f_name
      t.string :l_name
      t.date :dob
      t.string :state
      t.string :country
      t.string :zip_code

      t.timestamps null: false
    end
  end
end
