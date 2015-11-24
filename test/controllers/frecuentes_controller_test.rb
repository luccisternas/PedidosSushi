require 'test_helper'

class FrecuentesControllerTest < ActionController::TestCase
  setup do
    @frecuente = frecuentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frecuentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frecuente" do
    assert_difference('Frecuente.count') do
      post :create, frecuente: { cliente_id: @frecuente.cliente_id, email: @frecuente.email }
    end

    assert_redirected_to frecuente_path(assigns(:frecuente))
  end

  test "should show frecuente" do
    get :show, id: @frecuente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @frecuente
    assert_response :success
  end

  test "should update frecuente" do
    patch :update, id: @frecuente, frecuente: { cliente_id: @frecuente.cliente_id, email: @frecuente.email }
    assert_redirected_to frecuente_path(assigns(:frecuente))
  end

  test "should destroy frecuente" do
    assert_difference('Frecuente.count', -1) do
      delete :destroy, id: @frecuente
    end

    assert_redirected_to frecuentes_path
  end
end
