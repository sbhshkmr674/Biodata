class Info < ActiveRecord::Base
	has_many :educations
	validates_presence_of :f_name
	validates_presence_of :l_name
	validates_presence_of :dob
	validates_presence_of :state
	validates_presence_of :country
	validates_presence_of :distric
	validates_presence_of :zip_code
	def self.search(search)
		if search
			where(["country Like ?", "%#{search}%"])
		elsif 
			all
		end
	end
				
end
