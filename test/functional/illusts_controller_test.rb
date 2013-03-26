require 'test_helper'

class IllustsControllerTest < ActionController::TestCase
  setup do
    @illust = illusts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:illusts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create illust" do
    assert_difference('Illust.count') do
      post :create, illust: { genre: @illust.genre, picture: @illust.picture, title: @illust.title }
    end

    assert_redirected_to illust_path(assigns(:illust))
  end

  test "should show illust" do
    get :show, id: @illust
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @illust
    assert_response :success
  end

  test "should update illust" do
    put :update, id: @illust, illust: { genre: @illust.genre, picture: @illust.picture, title: @illust.title }
    assert_redirected_to illust_path(assigns(:illust))
  end

  test "should destroy illust" do
    assert_difference('Illust.count', -1) do
      delete :destroy, id: @illust
    end

    assert_redirected_to illusts_path
  end
end
