Rails.application.routes.draw do
  authenticated :user do
    root :to => 'dashboard#show', :as => :authenticated_root
    # resources :sports, :only => [:show]
  end

  authenticated :admin_user do
    root :to => 'admin_dashboard#index', :as => :admin_root
    # resources :sports

  end


  root 'welcome#index'
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  resources :dashboard
  resources :users, :only => [:show]
  resources :sports do
    resources :teams do
      resources :players
    end
  end

end
