require 'test_helper'

class AvionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avion = avions(:one)
  end

  test "should get index" do
    get avions_url
    assert_response :success
  end

  test "should get new" do
    get new_avion_url
    assert_response :success
  end

  test "should create avion" do
    assert_difference('Avion.count') do
      post avions_url, params: { avion: { apiloto: @avion.apiloto, destino: @avion.destino, fllegadad: @avion.fllegadad, fsalidao: @avion.fsalidao, hllegadad: @avion.hllegadad, hsalidao: @avion.hsalidao, matricula: @avion.matricula, npiloto: @avion.npiloto, origen: @avion.origen } }
    end

    assert_redirected_to avion_url(Avion.last)
  end

  test "should show avion" do
    get avion_url(@avion)
    assert_response :success
  end

  test "should get edit" do
    get edit_avion_url(@avion)
    assert_response :success
  end

  test "should update avion" do
    patch avion_url(@avion), params: { avion: { apiloto: @avion.apiloto, destino: @avion.destino, fllegadad: @avion.fllegadad, fsalidao: @avion.fsalidao, hllegadad: @avion.hllegadad, hsalidao: @avion.hsalidao, matricula: @avion.matricula, npiloto: @avion.npiloto, origen: @avion.origen } }
    assert_redirected_to avion_url(@avion)
  end

  test "should destroy avion" do
    assert_difference('Avion.count', -1) do
      delete avion_url(@avion)
    end

    assert_redirected_to avions_url
  end
end
