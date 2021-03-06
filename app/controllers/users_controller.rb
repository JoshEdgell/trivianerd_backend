class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :authenticate_token, except: [:login, :create]
  before_action :authorize_user, except: [:login, :create, :index]

  # GET /users
  def index
    @users = User.all

    render json: @users.to_json(include: [:badges])
  end

  # GET /users/1
  def show
    render json: @user.to_json(include: [:badges])
  end

  #LOGIN
  def login
      user = User.find_by(username: params[:user][:username])
      if user && user.authenticate(params[:user][:password])
        token = create_token(user.id, user.username)
        render json: {status: 200, token: token, user: user}
      else
        render json: {status: 401, message: "Unauthorized"}
      end
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user.to_json(include: [:badges]), status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user.to_json(include: [:badges])
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

    def create_token(id, username)
      JWT.encode(payload(id, username), ENV['JWT_SECRET'], 'HS256')
    end

    def payload(id, username)
      {
        exp: (Time.now + 5.minutes).to_i,
        iat: Time.now.to_i,
        iss: ENV['JWT_ISSUER'],
        user: {
          id: id,
          username: username
        }
      }
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :password, :first_name, :last_name, :books_correct, :books_incorrect, :film_correct, :film_incorrect, :music_correct, :music_incorrect, :television_correct, :television_incorrect, :games_correct, :games_incorrect, :nature_correct, :nature_incorrect, :computers_correct, :computers_incorrect, :sports_correct, :sports_incorrect, :history_correct, :history_incorrect, :animals_correct, :animals_incorrect, :total_correct, :total_incorrect, :total_score)
    end
end
