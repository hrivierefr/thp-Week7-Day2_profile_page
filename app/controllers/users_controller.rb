class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update]
  # GET /users/1
  # GET /users/1.json
  def show
    if current_user == @user
      @comment_selection = @user.comments
      @gossip_selection = @user.gossips
    elsif logged_in?
      flash[:danger] = "Vous ne pouvez pas accéder à ce compte !"
      redirect_to user_path(current_user)
    else 
      redirect_to login_path
    end
  end

  # GET /users/new
  def new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    puts user_params
    puts @user
    if @user.save
      log_in(@user)
      flash[:success] = "Vous êtes maintenant connecté !"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
