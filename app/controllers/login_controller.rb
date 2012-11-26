class LoginController < ApplicationController

      def   login
        @customer = Customer.where(:userName => params[:username]).where(:password => params[:password]).first
     end
      def haslogin
        @customer = Customer.where(:userName => params[:username]).where(:password => params[:password]).first
        if @customer == nil
          flash[:error] = "UserName and password don't match."
          redirect_to :action => 'login'
        end
      end
end
