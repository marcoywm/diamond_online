DiamondSite::Application.routes.draw do

  resources :comments

  #scope '(:locale)' do

  resources :errors

  resources :carts


  match 'mains' => 'main#index'
  match 'main/:id' => 'main#show', :as => 'main', :via => :get
  match "admin" => "admin#index"


  match 'main/a/:level' => 'main#a', :as => 'category', :via => :get

  match "search" => "main#search", :as => 'search', :via => :get

  #match "login" => "login#login", :as => 'login', :via => :get

  #match "haslogin" => "login#haslogin", :as => 'haslogin', :via => :post

  match 'customers/:id/editfile' => 'customers#editfile', :as => 'editfile_customer', :via => :get
  match "results" => "main#search_results", :as => 'results', :via => :post

  resources :table2s

  resources :line_items

  resources :orders

  resources :customers

  resources :company_infos

  resources :cities

  resources :provinces

  resources :images

  resources :products      do
    get :who_bought, on: :member
  end

  root :to => 'main#index'
#end


  get 'administrator' => 'administrator#index'

   controller :sessions do
    get 'login' => :new
     post 'login' => :create
     delete 'logout' => :destroy
   end



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
