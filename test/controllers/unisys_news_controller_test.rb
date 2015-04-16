require 'test_helper'

class UnisysNewsControllerTest < ActionController::TestCase
  setup do
    @unisys_news = unisys_news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unisys_news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unisys_news" do
    assert_difference('UnisysNews.count') do
      post :create, unisys_news: { link: @unisys_news.link, title: @unisys_news.title }
    end

    assert_redirected_to unisys_news_path(assigns(:unisys_news))
  end

  test "should show unisys_news" do
    get :show, id: @unisys_news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unisys_news
    assert_response :success
  end

  test "should update unisys_news" do
    patch :update, id: @unisys_news, unisys_news: { link: @unisys_news.link, title: @unisys_news.title }
    assert_redirected_to unisys_news_path(assigns(:unisys_news))
  end

  test "should destroy unisys_news" do
    assert_difference('UnisysNews.count', -1) do
      delete :destroy, id: @unisys_news
    end

    assert_redirected_to unisys_news_index_path
  end
end
