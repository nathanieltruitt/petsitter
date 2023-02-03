require "test_helper"

class OwnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @owner = owners(:one)
  end

  test "should get index" do
    get owners_url, as: :json
    assert_response :success
  end

  test "should create owner" do
    assert_difference("Owner.count") do
      post owners_url, params: { owner: { email: @owner.email, first_name: @owner.first_name, last_name: @owner.last_name } }, as: :json
    end

    assert_response :created
  end

  test "should show owner" do
    get owner_url(@owner), as: :json
    assert_response :success
  end

  test "should update owner" do
    patch owner_url(@owner), params: { owner: { email: @owner.email, first_name: @owner.first_name, last_name: @owner.last_name } }, as: :json
    assert_response :success
  end

  test "should destroy owner" do
    assert_difference("Owner.count", -1) do
      delete owner_url(@owner), as: :json
    end

    assert_response :no_content
  end
end
