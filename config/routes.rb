Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :document_types
    resources :products do
      resources :documents do
        collection do
          post :update_positions
        end
      end
    end
  end
end
