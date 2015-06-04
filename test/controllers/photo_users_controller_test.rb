require 'test_helper'

class PhotoUsersControllerTest < ActionController::TestCase
  setup do
    @photo_user = photo_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photo_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo_user" do
    assert_difference('PhotoUser.count') do
      post :create, photo_user: { photo: @photo_user.photo, user_id: @photo_user.user_id }
    end

    assert_redirected_to photo_user_path(assigns(:photo_user))
  end

  test "should show photo_user" do
    get :show, id: @photo_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photo_user
    assert_response :success
  end

  test "should update photo_user" do
    patch :update, id: @photo_user, photo_user: { photo: @photo_user.photo, user_id: @photo_user.user_id }
    assert_redirected_to photo_user_path(assigns(:photo_user))
  end

  test "should destroy photo_user" do
    assert_difference('PhotoUser.count', -1) do
      delete :destroy, id: @photo_user
    end

    assert_redirected_to photo_users_path
  end
end
