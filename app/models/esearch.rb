class Esearch < ActiveRecord::Base
	def search_education
		searchs=Education.all

		search=searchs.where(["s_name Like ?", "%#{s_name}%"]) if s_name.present?
		search=searchs.where(["b_name Like ?", "%#{b_name}%"]) if b_name.present?
		search=searchs.where(["y_passout Like ?", "%#{y_passout}%"]) if y_passout.present?
		search=searchs.where(["o_marks Like ?", "%#{o_marks}%"]) if o_marks.present?
		search=searchs.where(["division Like ?", "%#{division}%"]) if division.present?
		return search
	end
end
