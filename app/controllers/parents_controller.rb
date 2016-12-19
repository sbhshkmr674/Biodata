class ParentsController < ApplicationController
  def index
  	@parents=Parent.all
  end
  def new 
  	@parent=Parent.new
  end
  def create
  	@parent=Parent.create(parent_params)
  	if @parent.save
  		flash[:success]="Your Parents Details has Created"
  		redirect_to @parent
  	else
  		flash[:alert]="Sorry !! Something gonna Wrong"
  		render 'new'
  	end
  end
  def show 
  	@parent=Parent.find(params[:id])
  end

  private
   def parent_params
   	params.require(:parent).permit(:name, :occupation, :salary)
   end
end
