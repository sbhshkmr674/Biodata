class Education < ActiveRecord::Base
  belongs_to :infos
  validates_presence_of :s_name
	validates_presence_of :b_name
	validates_presence_of :o_marks
	validates_presence_of :division
	validates_presence_of :y_passout
	
end
