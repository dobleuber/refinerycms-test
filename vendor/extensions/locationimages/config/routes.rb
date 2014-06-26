Refinery::Core::Engine.routes.draw do

  # Admin routes
  namespace :locationimages, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :locationimages, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
