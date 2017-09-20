class WelcomeController < ApplicationController
  def index
    render json: { status: 200, message: 'TriviaNerd Backend' }
  end
end
