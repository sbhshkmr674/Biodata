class EsearchesController < ApplicationController
	def new
      @search=Esearch.new
	end
	def create
		@search=Esearch.create(search_params)
		
		redirect_to @search
	end

	def show
		@search=Esearch.find(params[:id])
	end
	private
	 def search_params
	 	params.require(:esearch).permit(:s_name,:b_name, :y_passout, :o_marks, :division)
	 end

end
