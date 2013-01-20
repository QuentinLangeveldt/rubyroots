require 'test_helper'

class GitgemsControllerTest < ActionController::TestCase
  setup do
    @gitgem = gitgems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gitgems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gitgem" do
    assert_difference('Gitgem.count') do
      post :create, gitgem: { description: @gitgem.description, name: @gitgem.name, version: @gitgem.version }
    end

    assert_redirected_to gitgem_path(assigns(:gitgem))
  end

  test "should show gitgem" do
    get :show, id: @gitgem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gitgem
    assert_response :success
  end

  test "should update gitgem" do
    put :update, id: @gitgem, gitgem: { description: @gitgem.description, name: @gitgem.name, version: @gitgem.version }
    assert_redirected_to gitgem_path(assigns(:gitgem))
  end

  test "should destroy gitgem" do
    assert_difference('Gitgem.count', -1) do
      delete :destroy, id: @gitgem
    end

    assert_redirected_to gitgems_path
  end
end
