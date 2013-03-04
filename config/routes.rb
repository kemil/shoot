ActionController::Routing::Routes.draw do |map|
  map.resources :contacts

  map.resources :photos

  map.resources :categories
  map.resources :footers

  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users

  map.resource :session
  
  map.about '/about-eikon-photographer.html', :controller => 'static', :action => 'about'
  map.services '/eikon-photographer-services.html', :controller => 'static', :action => 'services'
  map.corporate '/washington-dc-corporate-events-photographer.html', :controller => 'categories', :action => 'show', :id => 7
  map.portrait '/washington-dc-portrait-photographer.html', :controller => 'categories', :action => 'show', :id => 2
  map.maternity '/washington-dc-maternity-photographer.html', :controller => 'categories', :action => 'show', :id => 6
  map.wedding '/washington-dc-wedding-photographer.html', :controller => 'categories', :action => 'show', :id => 5
  map.contactus '/contact-us.html', :controller => 'contacts', :action => 'new'
  

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => "static", :action => "home"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.connect '*path', :controller => 'application', :action => 'bad_url_redirect'
end
