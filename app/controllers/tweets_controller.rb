class TweetsController < ApplicationController
  def index
  	@tweets = Tweet.order('id DESC')
  	@tweet = Tweet.new
  end

  def create
  	@tweet = Tweet.new(params[:tweet])

  	if @tweet.save
      redirect_to :action => :index  
    else
    	@tweets = Tweet.order('id DESC')
      render :action => :index
    end
  end
end
