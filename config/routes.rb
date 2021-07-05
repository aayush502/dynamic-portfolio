Rails.application.routes.draw do

  root "home#index"
  post "save_info" => "home#save_info"

end
