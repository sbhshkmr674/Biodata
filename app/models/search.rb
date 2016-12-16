class Search < ActiveRecord::Base
	
	def search_people
		searchs=Info.all

		search=searchs.where(["f_name Like ?", "%#{f_name}%"]) if f_name.present?
		search=searchs.where(["l_name Like ?", "%#{l_name}%"]) if l_name.present?
		search=searchs.where(["dob Like ?", "%#{dob}%"]) if dob.present?
		search=searchs.where(["country Like ?", "%#{country}%"]) if country.present?
		search=searchs.where(["state Like ?", "%#{state}%"]) if state.present?
		search=searchs.where(["distric Like ?", "%#{distric}%"]) if distric.present?
		search=searchs.where(["zip_code Like ?", "%#{zip_code}%"]) if zip_code.present?
		return search
	end
end
