Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :menus do
    resources :menus, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :menus, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :menus, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
