class AdministratorController < ApplicationController
  before_filter :authorize

  def index
    @customer=Customer.find(session[:user_id])
    @total_orders = @customer.orders.count
    session[:order]=nil
  end


end
