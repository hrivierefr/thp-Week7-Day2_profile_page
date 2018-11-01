class LikesController < ApplicationController
  	def create

		like = Like.create(
			gossip_id: Gossip.find(params[:gossip_id]).id,
			liker_id: User.find(rand(9)+1).id
		)

		redirect_to gossip_path(Gossip.find(params[:id]))
	end
end
