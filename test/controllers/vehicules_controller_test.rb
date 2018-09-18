require 'test_helper'

class VehiculesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicule = vehicules(:one)
  end

  test "should get index" do
    get vehicules_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicule_url
    assert_response :success
  end

  test "should create vehicule" do
    assert_difference('Vehicule.count') do
      post vehicules_url, params: { vehicule: { N°cin: @vehicule.N°cin, N°engine: @vehicule.N°engine, color: @vehicule.color, date: @vehicule.date, mark: @vehicule.mark, owner_name: @vehicule.owner_name, vehicules_type: @vehicule.vehicules_type } }
    end

    assert_redirected_to vehicule_url(Vehicule.last)
  end

  test "should show vehicule" do
    get vehicule_url(@vehicule)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicule_url(@vehicule)
    assert_response :success
  end

  test "should update vehicule" do
    patch vehicule_url(@vehicule), params: { vehicule: { N°cin: @vehicule.N°cin, N°engine: @vehicule.N°engine, color: @vehicule.color, date: @vehicule.date, mark: @vehicule.mark, owner_name: @vehicule.owner_name, vehicules_type: @vehicule.vehicules_type } }
    assert_redirected_to vehicule_url(@vehicule)
  end

  test "should destroy vehicule" do
    assert_difference('Vehicule.count', -1) do
      delete vehicule_url(@vehicule)
    end

    assert_redirected_to vehicules_url
  end
end
