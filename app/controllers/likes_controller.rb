class LikesController < ApplicationController
  before_action :set_gossip

  	def create
  		#contrôler uniqueness
		like = Like.create(
			gossip_id: @gossip.id,
			liker_id: User.find(rand(User.first.id..User.last.id)).id
		)
	    redirect_back(fallback_location: gossips_path)

	end

	def delete
	end

	private

	def set_gossip
  		@gossip = Gossip.find(params[:gossip_id])
	end
	
end
