require 'test_helper'

class MaestriaControllerTest < ActionController::TestCase
  setup do
    @maestrium = maestria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maestria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maestrium" do
    assert_difference('Maestrium.count') do
      post :create, maestrium: { codigo: @maestrium.codigo }
    end

    assert_redirected_to maestrium_path(assigns(:maestrium))
  end

  test "should show maestrium" do
    get :show, id: @maestrium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maestrium
    assert_response :success
  end

  test "should update maestrium" do
    put :update, id: @maestrium, maestrium: { codigo: @maestrium.codigo }
    assert_redirected_to maestrium_path(assigns(:maestrium))
  end

  test "should destroy maestrium" do
    assert_difference('Maestrium.count', -1) do
      delete :destroy, id: @maestrium
    end

    assert_redirected_to maestria_path
  end
end
