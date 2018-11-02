class StaticController < ApplicationController
  def home
  	@last_gossips = [Gossip.last]
  	@gossip = Gossip.new
  	@@visitors += 1
  end 
end
