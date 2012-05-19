require 'test_helper'

class MasterServersControllerTest < ActionController::TestCase
  setup do
    @master_server = master_servers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:master_servers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create master_server" do
    assert_difference('MasterServer.count') do
      post :create, master_server: { group_hour: @master_server.group_hour, group_res: @master_server.group_res, ind_hour: @master_server.ind_hour, ind_resource: @master_server.ind_resource, org_hour: @master_server.org_hour, org_res: @master_server.org_res, server_region: @master_server.server_region, servername: @master_server.servername, serversize: @master_server.serversize }
    end

    assert_redirected_to master_server_path(assigns(:master_server))
  end

  test "should show master_server" do
    get :show, id: @master_server
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @master_server
    assert_response :success
  end

  test "should update master_server" do
    put :update, id: @master_server, master_server: { group_hour: @master_server.group_hour, group_res: @master_server.group_res, ind_hour: @master_server.ind_hour, ind_resource: @master_server.ind_resource, org_hour: @master_server.org_hour, org_res: @master_server.org_res, server_region: @master_server.server_region, servername: @master_server.servername, serversize: @master_server.serversize }
    assert_redirected_to master_server_path(assigns(:master_server))
  end

  test "should destroy master_server" do
    assert_difference('MasterServer.count', -1) do
      delete :destroy, id: @master_server
    end

    assert_redirected_to master_servers_path
  end
end
