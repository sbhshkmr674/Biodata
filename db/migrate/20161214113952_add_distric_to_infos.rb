class AddDistricToInfos < ActiveRecord::Migration
  def change
    add_column :infos, :distric, :string
  end
end
