class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :name
      t.string :occupation
      t.string :salary

      t.timestamps null: false
    end
  end
end
