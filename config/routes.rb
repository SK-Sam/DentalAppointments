Rails.application.routes.draw do
  root to: "welcome#index"

  # Dental Offices
  get "/dental_offices", to: "dental_offices#index"  

  # Dentists
  get "/dentists", to: "dentists#index"
end
