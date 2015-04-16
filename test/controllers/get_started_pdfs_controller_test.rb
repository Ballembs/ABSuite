require 'test_helper'

class GetStartedPdfsControllerTest < ActionController::TestCase
  setup do
    @get_started_pdf = get_started_pdfs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:get_started_pdfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create get_started_pdf" do
    assert_difference('GetStartedPdf.count') do
      post :create, get_started_pdf: { content: @get_started_pdf.content, title: @get_started_pdf.title }
    end

    assert_redirected_to get_started_pdf_path(assigns(:get_started_pdf))
  end

  test "should show get_started_pdf" do
    get :show, id: @get_started_pdf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @get_started_pdf
    assert_response :success
  end

  test "should update get_started_pdf" do
    patch :update, id: @get_started_pdf, get_started_pdf: { content: @get_started_pdf.content, title: @get_started_pdf.title }
    assert_redirected_to get_started_pdf_path(assigns(:get_started_pdf))
  end

  test "should destroy get_started_pdf" do
    assert_difference('GetStartedPdf.count', -1) do
      delete :destroy, id: @get_started_pdf
    end

    assert_redirected_to get_started_pdfs_path
  end
end
