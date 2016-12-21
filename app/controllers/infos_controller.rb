class InfosController < ApplicationController
  def index
    #@search=Info.search(params[:q])
  	#@infos=Info.search(params[:search])
     @infos=Info.all
  end

  def new 
  	@info=Info.new
  end
  def destroy
    @info=Info.find(params[:id])
    if @info.destroy
      flash[:success]="You Delete successfully"
     else
      flash[:alert]="Sorry ! Something is going to wrong"
    end
  end
  def create
  	@info=Info.create(info_params)

  	if @info.save
  		flash[:success]="Hi! Your Biodata is saved successfully"
  		redirect_to new_education_path
  	else
  		flash[:alert]="Something is going to wrong"
  		render 'new'
  	end
  end

  def subregion_options
  render partial: 'subregion_select'
  end

  def search_params
    params[:l_name]
    @infos = Info.where(:l_name => params[:l_name]).first
  end
  private

  def info_params
  	params.require(:info).permit(:f_name,:l_name,:dob,:country,:state,:distric,:zip_code)
  end

end
