class CommentsController < ApplicationController
  before_action :set_gossip
  before_action :set_comment

  	def create
  		comment = params[:comment]
		Comment.create(
			gossip_id: comment[:id],
			commenter_id: User.find(rand(9)+1).id,
			content: comment[:content]
		)
	    redirect_to gossip_path(@gossip.id)
  	end

  	def destroy
  		@comment.destroy
	    redirect_to gossip_path(@gossip.id)
  	end

  	private
    # Use callbacks to share common setup or constraints between actions.
	def set_gossip
  		@gossip = Gossip.find(params['id'])
	end
	def set_comment
  		@comment = Comment.find(params['id'])
	end
end
