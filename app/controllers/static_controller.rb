class StaticController < ApplicationController
  def home
  	@last_gossips = [Gossip.last]
  	@gossip = Gossip.new
  end 
end
