require 'test_helper'

class NewFeaturesControllerTest < ActionController::TestCase
  setup do
    @new_feature = new_features(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_features)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_feature" do
    assert_difference('NewFeature.count') do
      post :create, new_feature: { content: @new_feature.content, name: @new_feature.name }
    end

    assert_redirected_to new_feature_path(assigns(:new_feature))
  end

  test "should show new_feature" do
    get :show, id: @new_feature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_feature
    assert_response :success
  end

  test "should update new_feature" do
    patch :update, id: @new_feature, new_feature: { content: @new_feature.content, name: @new_feature.name }
    assert_redirected_to new_feature_path(assigns(:new_feature))
  end

  test "should destroy new_feature" do
    assert_difference('NewFeature.count', -1) do
      delete :destroy, id: @new_feature
    end

    assert_redirected_to new_features_path
  end
end
