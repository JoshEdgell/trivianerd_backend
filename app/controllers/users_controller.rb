class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users.to_json(include: :badges)
  end

  # GET /users/1
  def show
    render json: @user.to_json(include: :badges)
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :password_digest, :first_name, :last_name, :books_correct, :books_incorrect, :film_correct, :film_incorrect, :music_correct, :music_incorrect, :television_correct, :television_incorrect, :games_correct, :games_incorrect, :nature_correct, :nature_incorrect, :computers_correct, :computers_incorrect, :sports_correct, :sports_incorrect, :history_correct, :history_incorrect, :animals_correct, :animals_incorrect, :total_correct, :total_incorrect, :total_score)
    end
end
