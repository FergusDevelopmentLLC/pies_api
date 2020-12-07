require 'test_helper'

class PiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @py = pies(:one)
  end

  test "should get index" do
    get pies_url, as: :json
    assert_response :success
  end

  test "should create py" do
    assert_difference('Pie.count') do
      post pies_url, params: { py: { chunks: @py.chunks, pieces: @py.pieces, title: @py.title } }, as: :json
    end

    assert_response 201
  end

  test "should show py" do
    get py_url(@py), as: :json
    assert_response :success
  end

  test "should update py" do
    patch py_url(@py), params: { py: { chunks: @py.chunks, pieces: @py.pieces, title: @py.title } }, as: :json
    assert_response 200
  end

  test "should destroy py" do
    assert_difference('Pie.count', -1) do
      delete py_url(@py), as: :json
    end

    assert_response 204
  end
end
