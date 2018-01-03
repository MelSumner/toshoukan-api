require 'test_helper'

class BookTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_type = book_types(:one)
  end

  test "should get index" do
    get book_types_url, as: :json
    assert_response :success
  end

  test "should create book_type" do
    assert_difference('BookType.count') do
      post book_types_url, params: { book_type: { name: @book_type.name } }, as: :json
    end

    assert_response 201
  end

  test "should show book_type" do
    get book_type_url(@book_type), as: :json
    assert_response :success
  end

  test "should update book_type" do
    patch book_type_url(@book_type), params: { book_type: { name: @book_type.name } }, as: :json
    assert_response 200
  end

  test "should destroy book_type" do
    assert_difference('BookType.count', -1) do
      delete book_type_url(@book_type), as: :json
    end

    assert_response 204
  end
end
