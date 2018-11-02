class CommentsController < ApplicationController
  before_action :set_gossip
  before_action :set_comment, only: [:destroy]

  	def create
  		Comment.create!(comment_params)
      redirect_back(fallback_location: gossips_path)
  	end

  	def destroy
  		@comment.destroy
	    redirect_to gossip_path(@gossip.id)
  	end

	private
    # Use callbacks to share common setup or constraints between actions.
	def set_gossip
		@gossip = Gossip.find(params['gossip_id'])
	end
	def set_comment
  	@comment = Comment.find(params['id'])
	end

  def comment_params
    params.require(:comment).permit(:content, :commenter_id, :gossip_id)
  end

end
