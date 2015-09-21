require 'test_helper'

class DormitoriesControllerTest < ActionController::TestCase
  setup do
    @dormitory = dormitories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dormitories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dormitory" do
    assert_difference('Dormitory.count') do
      post :create, dormitory: { description: @dormitory.description, matron: @dormitory.matron, name: @dormitory.name }
    end

    assert_redirected_to dormitory_path(assigns(:dormitory))
  end

  test "should show dormitory" do
    get :show, id: @dormitory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dormitory
    assert_response :success
  end

  test "should update dormitory" do
    patch :update, id: @dormitory, dormitory: { description: @dormitory.description, matron: @dormitory.matron, name: @dormitory.name }
    assert_redirected_to dormitory_path(assigns(:dormitory))
  end

  test "should destroy dormitory" do
    assert_difference('Dormitory.count', -1) do
      delete :destroy, id: @dormitory
    end

    assert_redirected_to dormitories_path
  end
end
