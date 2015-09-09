Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    # get "activities" => "activities#index", :as => "activities"
    resources :activities
  end
end
