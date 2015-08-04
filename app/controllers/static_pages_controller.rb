class StaticPagesController < ApplicationController

  def app
    @tweets = Tweet.all
  end

end
