require 'test_helper'

class IndexstudentsControllerTest < ActionController::TestCase
  setup do
    @indexstudent = indexstudents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indexstudents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indexstudent" do
    assert_difference('Indexstudent.count') do
      post :create, indexstudent: {  }
    end

    assert_redirected_to indexstudent_path(assigns(:indexstudent))
  end

  test "should show indexstudent" do
    get :show, id: @indexstudent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indexstudent
    assert_response :success
  end

  test "should update indexstudent" do
    put :update, id: @indexstudent, indexstudent: {  }
    assert_redirected_to indexstudent_path(assigns(:indexstudent))
  end

  test "should destroy indexstudent" do
    assert_difference('Indexstudent.count', -1) do
      delete :destroy, id: @indexstudent
    end

    assert_redirected_to indexstudents_path
  end
end
