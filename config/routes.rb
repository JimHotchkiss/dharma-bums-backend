Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do 
      resources :meditations do
        resources :comments
      end 
      resources :comments do 
        resources :replies 
      end 
    end 
  end 
end
