class VisitorsController < ApplicationController
  
  def index
    @visitors = Visitor.all
  end
  
  def new
    
    @visitor = Visitor.new
    
  end

  def create
    @visitor = Visitor.new(visitor_params)
    @visitor.save
    if @visitor.save
      flash[:info]="Thanks for your inquiry. You will receive a response shortly."
      redirect_to welcome_path
    else
      flash[:info]="Sorry! An error occurred. Please try again."
      render 'new'
    end
  end
  
  def notify
    
  end
  
  private
  
   def visitor_params
      params.require(:visitor).permit(:fname, :lname, :phone, :email, :interest)
   end
end
