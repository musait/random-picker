Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/', to: 'home#index'

  get 'get_random_choice', to: 'choices#get_random_choices'
end
