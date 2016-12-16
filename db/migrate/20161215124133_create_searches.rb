class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :f_name
      t.string :l_name
      t.date :dob
      t.string :country
      t.string :distric
      t.string :zip_code

      t.timestamps null: false
    end
  end
end
