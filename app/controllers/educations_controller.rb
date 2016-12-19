class EducationsController < ApplicationController
  def index
  	@educations=Education.all
  end
   def new 
   	#@info=Info.find(params[:id])
   	@education=Education.new
   end

   def create
   	#@info=Info.find(params[:id])
   	@education=Education.create(education_params)

   	if @education.save
   		flash[:success]="Your Education is Created!"
   		redirect_to new_parent_path
   	else
   		flash[:alert]="Something happing wrong"
   		render 'new'
   	end
   end

   def show
   #	@info=Info.find(params[:id])
   	@education=Education.find(params[:id])
   end

   private
   def education_params
   	params.require(:education).permit(:s_name,:y_passout,:o_marks,:b_name,:division)
   end
end