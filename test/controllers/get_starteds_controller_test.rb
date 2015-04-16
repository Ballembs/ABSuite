require 'test_helper'

class GetStartedsControllerTest < ActionController::TestCase
  setup do
    @get_started = get_starteds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:get_starteds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create get_started" do
    assert_difference('GetStarted.count') do
      post :create, get_started: { content: @get_started.content, link: @get_started.link, title: @get_started.title }
    end

    assert_redirected_to get_started_path(assigns(:get_started))
  end

  test "should show get_started" do
    get :show, id: @get_started
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @get_started
    assert_response :success
  end

  test "should update get_started" do
    patch :update, id: @get_started, get_started: { content: @get_started.content, link: @get_started.link, title: @get_started.title }
    assert_redirected_to get_started_path(assigns(:get_started))
  end

  test "should destroy get_started" do
    assert_difference('GetStarted.count', -1) do
      delete :destroy, id: @get_started
    end

    assert_redirected_to get_starteds_path
  end
end
