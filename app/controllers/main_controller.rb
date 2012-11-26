class MainController < ApplicationController
   def index
    @products = Product.order('created_at DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end
  
  def main
     @products = Product.order('created_at DESC')
  end

   def a
     if Product::ALLOW_Category.include?(params[:level])
       @products = Product.where(:category => params[:level]).
           order('created_at DESC')
     else
       flash[:error] = "This category does not exist."
       redirect_to root_path
     end
   end


   def search
   end # Loads up the search.html.erb view file.

   def search_results
     @keyword = params[:keyword]

     @products = Product.where("name LIKE ?", "%#{@keyword}%")
   end

end
