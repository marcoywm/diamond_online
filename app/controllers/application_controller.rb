class ApplicationController < ActionController::Base
 # before_filter :set_i18n_locale_from_params

  protect_from_forgery

  protected
  
  def require_sudo
      require 'digest'
      authenticate_or_request_with_http_basic do |username, password|
        # Return true if the username and password is correct.
        username == 'admin' &&
        Digest::SHA1.hexdigest('384'+password) == '37c9f2298c5f7841b60b50e7604c58a5f968a7d4'
        # Here we have a salted SHA1 password being used. Please note that it is not
        # a good practice to have a password hardcoded in your source, even if it is hashsed.
        # FYI: The password is dragonfruit.
      end
    end

     def authorize
       if request.format == Mime::HTML
         unless Customer.find_by_id(session[:user_id])
           redirect_to login_url, notice: "Please log in"
         end
       else
         authenticate_or_request_with_http_basic do |username, password|
           user = Customer.find_by_name(username)
           user && user.authenticate(password)
         end
       end
    end

  def set_i18n_locale_from_params
    if params[:locale]
      if I18n.available_locales.include?(params[:locale].to_sym)
        I18n.locale = params[:locale]
      else
        flash.now[:notice] =
            "#{params[:locale]} translation not available"
        logger.error flash.now[:notice]
      end
    end
  end
  def default_url_options
    { locale: I18n.locale }
  end




  protected
   def current_cart
     Cart.find(session[:cart_id])

   rescue ActiveRecord::RecordNotFound
     cart=Cart.create
     session[:cart_id]=cart.id
     cart
   end
  
  
end
