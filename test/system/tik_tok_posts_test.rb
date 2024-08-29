require "application_system_test_case"

class TikTokPostsTest < ApplicationSystemTestCase
  setup do
    @tik_tok_post = tik_tok_posts(:one)
  end

  test "visiting the index" do
    visit tik_tok_posts_url
    assert_selector "h1", text: "Tik tok posts"
  end

  test "should create tik tok post" do
    visit tik_tok_posts_url
    click_on "New tik tok post"

    fill_in "Author", with: @tik_tok_post.author
    fill_in "Caption", with: @tik_tok_post.caption
    fill_in "Likes", with: @tik_tok_post.likes
    fill_in "Views", with: @tik_tok_post.views
    click_on "Create Tik tok post"

    assert_text "Tik tok post was successfully created"
    click_on "Back"
  end

  test "should update Tik tok post" do
    visit tik_tok_post_url(@tik_tok_post)
    click_on "Edit this tik tok post", match: :first

    fill_in "Author", with: @tik_tok_post.author
    fill_in "Caption", with: @tik_tok_post.caption
    fill_in "Likes", with: @tik_tok_post.likes
    fill_in "Views", with: @tik_tok_post.views
    click_on "Update Tik tok post"

    assert_text "Tik tok post was successfully updated"
    click_on "Back"
  end

  test "should destroy Tik tok post" do
    visit tik_tok_post_url(@tik_tok_post)
    click_on "Destroy this tik tok post", match: :first

    assert_text "Tik tok post was successfully destroyed"
  end
end
