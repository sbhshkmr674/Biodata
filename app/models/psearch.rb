class Psearch < ActiveRecord::Base
	def search_parent
		searchs=Psearch.all

		search=searchs.where(["name Like ?", "%#{name}%"]) if name.present?
		search=searchs.where(["occupation Like ?", "%#{occupation}%"]) if occupation.present?
		search=searchs.where(["salary Like ?", "%#{salary}%"]) if salary.present?
		return search
	end
end
