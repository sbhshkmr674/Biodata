class Payment < ActiveRecord::Base
	validates_presence_of :d_card
	validates_presence_of :expiry_date, numericality: { only_integer: true }
	validates_presence_of :ccv_no, numericality: { only_integer: true }, length: { is:4}
	validates_presence_of :bank_name
end
