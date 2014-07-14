require 'test_helper'

class InstallationDetailsControllerTest < ActionController::TestCase
  setup do
    @installation_detail = installation_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:installation_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create installation_detail" do
    assert_difference('InstallationDetail.count') do
      post :create, installation_detail: { home_type_id: @installation_detail.home_type_id, light_type_id: @installation_detail.light_type_id, num_ppl: @installation_detail.num_ppl, num_rooms: @installation_detail.num_rooms }
    end

    assert_redirected_to installation_detail_path(assigns(:installation_detail))
  end

  test "should show installation_detail" do
    get :show, id: @installation_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @installation_detail
    assert_response :success
  end

  test "should update installation_detail" do
    patch :update, id: @installation_detail, installation_detail: { home_type_id: @installation_detail.home_type_id, light_type_id: @installation_detail.light_type_id, num_ppl: @installation_detail.num_ppl, num_rooms: @installation_detail.num_rooms }
    assert_redirected_to installation_detail_path(assigns(:installation_detail))
  end

  test "should destroy installation_detail" do
    assert_difference('InstallationDetail.count', -1) do
      delete :destroy, id: @installation_detail
    end

    assert_redirected_to installation_details_path
  end
end
