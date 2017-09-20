require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { animals_correct: @user.animals_correct, animals_incorrect: @user.animals_incorrect, books_correct: @user.books_correct, books_incorrect: @user.books_incorrect, computers_correct: @user.computers_correct, computers_incorrect: @user.computers_incorrect, film_correct: @user.film_correct, film_incorrect: @user.film_incorrect, first_name: @user.first_name, games_correct: @user.games_correct, games_incorrect: @user.games_incorrect, history_correct: @user.history_correct, history_incorrect: @user.history_incorrect, last_name: @user.last_name, music_correct: @user.music_correct, music_incorrect: @user.music_incorrect, nature_correct: @user.nature_correct, nature_incorrect: @user.nature_incorrect, password_digest: @user.password_digest, sports_correct: @user.sports_correct, sports_incorrect: @user.sports_incorrect, television_correct: @user.television_correct, television_incorrect: @user.television_incorrect, total_correct: @user.total_correct, total_incorrect: @user.total_incorrect, total_score: @user.total_score, username: @user.username } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { animals_correct: @user.animals_correct, animals_incorrect: @user.animals_incorrect, books_correct: @user.books_correct, books_incorrect: @user.books_incorrect, computers_correct: @user.computers_correct, computers_incorrect: @user.computers_incorrect, film_correct: @user.film_correct, film_incorrect: @user.film_incorrect, first_name: @user.first_name, games_correct: @user.games_correct, games_incorrect: @user.games_incorrect, history_correct: @user.history_correct, history_incorrect: @user.history_incorrect, last_name: @user.last_name, music_correct: @user.music_correct, music_incorrect: @user.music_incorrect, nature_correct: @user.nature_correct, nature_incorrect: @user.nature_incorrect, password_digest: @user.password_digest, sports_correct: @user.sports_correct, sports_incorrect: @user.sports_incorrect, television_correct: @user.television_correct, television_incorrect: @user.television_incorrect, total_correct: @user.total_correct, total_incorrect: @user.total_incorrect, total_score: @user.total_score, username: @user.username } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
