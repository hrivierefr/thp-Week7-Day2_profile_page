class StaticController < ApplicationController
  def home
  	@last_gossips = Gossip.last(3)
  	@gossip = Gossip.new
  	@@visitors += 1
  end 
end
