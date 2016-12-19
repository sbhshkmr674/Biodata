class CreatePsearches < ActiveRecord::Migration
  def change
    create_table :psearches do |t|
      t.string :name
      t.string :occupation
      t.string :salary

      t.timestamps null: false
    end
  end
end
