Rails.application.routes.draw do


  # the routes could be nested in resources but kept them like that
  # for checking them. If you want to change them into resources there
  # is no problem at all

  root 'welcome#index'

  get '/admin_panel', to: 'welcome#admin_panel'
  get '/settings', to: 'welcome#settings'
  get '/group_mail', to: 'welcome#group_mail'
  get '/admin', to: 'welcome#admin'

  get '/users', to: 'users#index'
  get '/users/edit', to: 'users#edit'
  get '/users/new', to: 'users#new'
  get '/users/show', to: 'users#show'

  get '/functions', to: 'functions#index'
  get '/functions/delete', to: 'functions#delete'
  get '/functions/new', to: 'functions#new'
  get '/functions/edit', to: 'functions#edit'
  get '/functions/show', to: 'functions#show'

  get '/positions', to: 'positions#index'
  get '/positions/delete', to: 'positions#delete'
  get '/positions/new', to: 'positions#new'
  get '/positions/edit', to: 'positions#edit'
  get '/positions/show', to: 'positions#show'

  get '/units', to: 'units#index'
  get '/units/delete', to: 'units#delete'
  get '/units/new', to: 'units#new'
  get '/units/edit', to: 'units#edit'
  get '/units/show', to: 'units#show'
  get '/units/tracking', to: 'units#tracking'
  get '/units/show_mail', to: 'units#show_mail'
  get '/units/send_mail', to: 'units#send_mail'
  get '/units/group_mail', to: 'units#group_mail'
  get '/units/send_mails', to: 'units#send_mails'
  get '/units/send_massive_mails', to: 'units#send_massive_mails'
  get '/units/user_list', to: 'units#user_list'
  get '/units/non_response_mail', to: 'units#non_response_mail'
  get '/units/download_massive_mails_log', to: 'units#download_massive_mails_log'

  get '/surveys', to: 'surveys#index'
  get '/surveys/show', to: 'surveys#show'
  get '/surveys/download_calc', to: 'surveys#download_calc'
  get '/surveys/download_manual', to: 'surveys#download_manual'

  get '/responses', to: 'responses#index'
  get '/responses/show', to: 'responses#show'

  get '/campaigns', to: 'campaigns#index'
  get '/campaigns/delete', to: 'campaigns#delete'
  get '/campaigns/new', to: 'campaigns#new'
  get '/campaigns/edit', to: 'campaigns#edit'
  get '/campaigns/show', to: 'campaigns#show'

  post '/users/update', to: 'users#update'
  post '/users/create', to: 'users#create'

  post '/surveys/create', to: 'surveys#create'

  post '/functions/update', to: 'functions#update'
  post '/functions/create', to: 'functions#create'
  post '/functions/submit_survey', to: 'functions#submit_survey'

  post '/positions/update', to: 'positions#update'
  post '/positions/create', to: 'positions#create'

  post '/units/update', to: 'units#update'
  post '/units/create', to: 'units#create'

  post '/campaigns/update', to: 'campaigns#update'
  post '/campaigns/create', to: 'campaigns#create'


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
