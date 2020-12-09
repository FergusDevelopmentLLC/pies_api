require 'test_helper'

class PiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pie = pies(:one)
  end

  test "should get index" do
    get pies_url, as: :json
    assert_response :success
  end

  test "should create pie" do
    assert_difference('Pie.count') do
      post pies_url, params: { pie: { chunks: @pie.chunks, pieces: @pie.pieces, title: @pie.title } }, as: :json
    end

    assert_response 201
  end

  test "should show pie" do
    get pie_url(@pie), as: :json
    assert_response :success
  end

  test "should update pie" do
    patch pie_url(@pie), params: { pie: { chunks: @pie.chunks, pieces: @pie.pieces, title: @pie.title } }, as: :json
    assert_response 200
  end

  test "should destroy pie" do
    assert_difference('Pie.count', -1) do
      delete pie_url(@pie), as: :json
    end

    assert_response 204
  end
end
