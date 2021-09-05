require "test_helper"

class TuitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tuite = tuites(:one)
  end

  test "should get index" do
    get tuites_url
    assert_response :success
  end

  test "should get new" do
    get new_tuite_url
    assert_response :success
  end

  test "should create tuite" do
    assert_difference('Tuite.count') do
      post tuites_url, params: { tuite: { tuite: @tuite.tuite } }
    end

    assert_redirected_to tuite_url(Tuite.last)
  end

  test "should show tuite" do
    get tuite_url(@tuite)
    assert_response :success
  end

  test "should get edit" do
    get edit_tuite_url(@tuite)
    assert_response :success
  end

  test "should update tuite" do
    patch tuite_url(@tuite), params: { tuite: { tuite: @tuite.tuite } }
    assert_redirected_to tuite_url(@tuite)
  end

  test "should destroy tuite" do
    assert_difference('Tuite.count', -1) do
      delete tuite_url(@tuite)
    end

    assert_redirected_to tuites_url
  end
end
