class SessionsController < ApplicationController
  	def new

  	end

  	def create
  		puts session_params
    	if User.find_by(email: session_params[:email]).authenticate(session_params[:password]) 
	    	redirect_to root_path
	    else
		
		end
	end

	def destroy
	end


	private
    # Use callbacks to share common setup or constraints between actions.
    
	def session_params
    	params.require(:session).permit(:new, :create, :destroy)
    end
end


