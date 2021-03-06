Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    post '/tweets', to: 'tweets#create'
    post '/sms', to: 'sms#receive_sms'
  end

  get '/', to: 'static_pages#app'
end
