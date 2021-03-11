require "test_helper"

class EMainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @e_main = e_mains(:one)
  end

  test "should get index" do
    get e_mains_url
    assert_response :success
  end

  test "should get new" do
    get new_e_main_url
    assert_response :success
  end

  test "should create e_main" do
    assert_difference('EMain.count') do
      post e_mains_url, params: { e_main: {  } }
    end

    assert_redirected_to e_main_url(EMain.last)
  end

  test "should show e_main" do
    get e_main_url(@e_main)
    assert_response :success
  end

  test "should get edit" do
    get edit_e_main_url(@e_main)
    assert_response :success
  end

  test "should update e_main" do
    patch e_main_url(@e_main), params: { e_main: {  } }
    assert_redirected_to e_main_url(@e_main)
  end

  test "should destroy e_main" do
    assert_difference('EMain.count', -1) do
      delete e_main_url(@e_main)
    end

    assert_redirected_to e_mains_url
  end
end
