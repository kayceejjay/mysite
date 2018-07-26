class VisitorsController < ApplicationController
  
  def new
    
    @visitor = Visitor.new
    
  end

  def create
    @visitor = Visitor.new(visitor_params)
    @visitor.save
    flash[:info] = "Thanks for your inquiry. You will receive a response shortly."
  end
  
  private
  
   def visitor_params
      params.require(:user).permit(:fname, :lname, :phone, :email)
   end
end
