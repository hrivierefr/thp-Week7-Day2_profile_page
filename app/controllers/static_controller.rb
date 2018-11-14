class StaticController < ApplicationController
  def home
  	@gossip_selection = Gossip.last(3)
  end 
end
