InsideGovApi::Application.routes.draw do
  resources :topics, only: :index
end
