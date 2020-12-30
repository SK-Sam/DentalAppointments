Rails.application.routes.draw do
  root to: "welcome#index"

  # Dental Offices
  get "/dental_offices", to: "dental_offices#index"
  get "/dental_offices/new", to: "dental_offices#new"
  get "/dental_offices/:id", to: "dental_offices#show"
  get "/dental_offices/:id/edit", to: "dental_offices#edit"
  patch "/dental_offices/:id", to: "dental_offices#update"
  post "/dental_offices", to: "dental_offices#create"  


  # Dentists
  get "/dentists", to: "dentists#index"
end
