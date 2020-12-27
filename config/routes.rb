Rails.application.routes.draw do
  root to: "welcome#index"

  # Dental Offices
  get "/dental_offices", to: "dental_offices#index"
  get "/dental_offices/new", to: "dental_offices#new"  


  # Dentists
  get "/dentists", to: "dentists#index"
end
