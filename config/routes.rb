Rails.application.routes.draw do

  unless  Gem::Specification::find_all_by_name('route_translator').any?
    # normal translation scoping
    scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
      resources :activities
    end
  else # special routing for localized routes via the route_translator gem
    localized do
      resources :activities
    end
  end

end
