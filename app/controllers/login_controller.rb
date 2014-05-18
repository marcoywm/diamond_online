class LoginController < ApplicationController

      def   login
           
     end
      def haslogin
        @customer = Customer.where(:userName => params[:username]).where(:password => params[:password]).first
        if @customer == nil
          flash[:error] = "UserName and password don't match."
          redirect_to :action => 'login'
        else
          session[:user]=@customer.userName
        end
      end
end
