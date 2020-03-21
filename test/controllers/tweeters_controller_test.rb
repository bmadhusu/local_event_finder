require 'test_helper'

class TweetersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tweeters_index_url
    assert_response :success
  end

  test "should get show" do
    get tweeters_show_url
    assert_response :success
  end

  test "should get new" do
    get tweeters_new_url
    assert_response :success
  end

  test "should get edit" do
    get tweeters_edit_url
    assert_response :success
  end

  test "should get delete" do
    get tweeters_delete_url
    assert_response :success
  end

end
