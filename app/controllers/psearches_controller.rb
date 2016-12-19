class PsearchesController < ApplicationController
  def index
  	@searchs=Psearch.all
  end
  def new 
  	@search=Psearch.new
  end
  def create
  	@search=Psearch.create(psearch_params)
  	if @search.save
  		flash[:success]="You searched Successfully"
        redirect_to @search
    else
    	flash[:alert]="Something going wrong"
    	render 'new'
    end
  end

  private
  def psearch_params
  	params.require(:psearch).permit(:name, :occupation, :salary)
  end
end
