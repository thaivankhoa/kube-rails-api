Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "health_check", to: "health_checks#show"
      post "demo_jobs", to: "demo_jobs#create"
    end
  end
end
