require "test_helper"

class PetsittersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @petsitter = petsitters(:one)
  end

  test "should get index" do
    get petsitters_url, as: :json
    assert_response :success
  end

  test "should create petsitter" do
    assert_difference("Petsitter.count") do
      post petsitters_url, params: { petsitter: { email: @petsitter.email, first_name: @petsitter.first_name, last_name: @petsitter.last_name } }, as: :json
    end

    assert_response :created
  end

  test "should show petsitter" do
    get petsitter_url(@petsitter), as: :json
    assert_response :success
  end

  test "should update petsitter" do
    patch petsitter_url(@petsitter), params: { petsitter: { email: @petsitter.email, first_name: @petsitter.first_name, last_name: @petsitter.last_name } }, as: :json
    assert_response :success
  end

  test "should destroy petsitter" do
    assert_difference("Petsitter.count", -1) do
      delete petsitter_url(@petsitter), as: :json
    end

    assert_response :no_content
  end
end
