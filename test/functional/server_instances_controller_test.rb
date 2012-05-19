require 'test_helper'

class ServerInstancesControllerTest < ActionController::TestCase
  setup do
    @server_instance = server_instances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:server_instances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create server_instance" do
    assert_difference('ServerInstance.count') do
      post :create, server_instance: { end_time: @server_instance.end_time, masterid: @server_instance.masterid, ownerid: @server_instance.ownerid, recent_exe_date: @server_instance.recent_exe_date, recentbill: @server_instance.recentbill, start_time: @server_instance.start_time, status: @server_instance.status, totalbill: @server_instance.totalbill }
    end

    assert_redirected_to server_instance_path(assigns(:server_instance))
  end

  test "should show server_instance" do
    get :show, id: @server_instance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @server_instance
    assert_response :success
  end

  test "should update server_instance" do
    put :update, id: @server_instance, server_instance: { end_time: @server_instance.end_time, masterid: @server_instance.masterid, ownerid: @server_instance.ownerid, recent_exe_date: @server_instance.recent_exe_date, recentbill: @server_instance.recentbill, start_time: @server_instance.start_time, status: @server_instance.status, totalbill: @server_instance.totalbill }
    assert_redirected_to server_instance_path(assigns(:server_instance))
  end

  test "should destroy server_instance" do
    assert_difference('ServerInstance.count', -1) do
      delete :destroy, id: @server_instance
    end

    assert_redirected_to server_instances_path
  end
end
