require 'test_helper'

class CarpetaControllerTest < ActionController::TestCase
  setup do
    @carpetum = carpeta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carpeta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carpetum" do
    assert_difference('Carpetum.count') do
      post :create, carpetum: { anoingreso: @carpetum.anoingreso, codigo: @carpetum.codigo, docid: @carpetum.docid, materiaactual: @carpetum.materiaactual, materiafaltante: @carpetum.materiafaltante, materiasvista: @carpetum.materiasvista, nombre: @carpetum.nombre, semestreingreso: @carpetum.semestreingreso }
    end

    assert_redirected_to carpetum_path(assigns(:carpetum))
  end

  test "should show carpetum" do
    get :show, id: @carpetum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carpetum
    assert_response :success
  end

  test "should update carpetum" do
    put :update, id: @carpetum, carpetum: { anoingreso: @carpetum.anoingreso, codigo: @carpetum.codigo, docid: @carpetum.docid, materiaactual: @carpetum.materiaactual, materiafaltante: @carpetum.materiafaltante, materiasvista: @carpetum.materiasvista, nombre: @carpetum.nombre, semestreingreso: @carpetum.semestreingreso }
    assert_redirected_to carpetum_path(assigns(:carpetum))
  end

  test "should destroy carpetum" do
    assert_difference('Carpetum.count', -1) do
      delete :destroy, id: @carpetum
    end

    assert_redirected_to carpeta_path
  end
end
