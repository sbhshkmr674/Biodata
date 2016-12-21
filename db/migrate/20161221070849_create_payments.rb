class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :d_card
      t.string :expiry_date
      t.string :ccv_no
      t.string :bank_name

      t.timestamps null: false
    end
  end
end
