Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    post '/tweets', to: 'tweets#create'
    get 'sms', to: 'twilio#receive_sms'
  end

  get '/', to: 'static_pages#app'
end
