require "test_helper"

class TikTokPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tik_tok_post = tik_tok_posts(:one)
  end

  test "should get index" do
    get tik_tok_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_tik_tok_post_url
    assert_response :success
  end

  test "should create tik_tok_post" do
    assert_difference("TikTokPost.count") do
      post tik_tok_posts_url, params: { tik_tok_post: { author: @tik_tok_post.author, caption: @tik_tok_post.caption, likes: @tik_tok_post.likes, views: @tik_tok_post.views } }
    end

    assert_redirected_to tik_tok_post_url(TikTokPost.last)
  end

  test "should show tik_tok_post" do
    get tik_tok_post_url(@tik_tok_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_tik_tok_post_url(@tik_tok_post)
    assert_response :success
  end

  test "should update tik_tok_post" do
    patch tik_tok_post_url(@tik_tok_post), params: { tik_tok_post: { author: @tik_tok_post.author, caption: @tik_tok_post.caption, likes: @tik_tok_post.likes, views: @tik_tok_post.views } }
    assert_redirected_to tik_tok_post_url(@tik_tok_post)
  end

  test "should destroy tik_tok_post" do
    assert_difference("TikTokPost.count", -1) do
      delete tik_tok_post_url(@tik_tok_post)
    end

    assert_redirected_to tik_tok_posts_url
  end
end
