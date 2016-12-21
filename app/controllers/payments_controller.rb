class PaymentsController < ApplicationController
  def index
  	@payments=Payment.all
  end

  def new
  	@payment=Payment.new
  end

  def create
  	@payment=Payment.create(payment_params)

  	if @payment.save
  		flash[:notice]="Thank You for Payment"
  		redirect_to new_search_path
  	else
  		flash[:notice]="Something is going wrong"
  		render 'new'
  	end
  end
  
  def show
  	@payment=Payment.find(params[:id])
  end
  private

   def payment_params
   	params.require(:payment).permit(:d_card,:expiry_date,:ccv_no,:bank_name)
   end
end
