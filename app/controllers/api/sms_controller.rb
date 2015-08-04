class Api::SmsController < ApplicationController

  def receive_sms
    puts params

    render json: params
  end

end
