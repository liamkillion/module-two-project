require 'test_helper'

class ArticleOutfitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article_outfit = article_outfits(:one)
  end

  test "should get index" do
    get article_outfits_url
    assert_response :success
  end

  test "should get new" do
    get new_article_outfit_url
    assert_response :success
  end

  test "should create article_outfit" do
    assert_difference('ArticleOutfit.count') do
      post article_outfits_url, params: { article_outfit: { article_id: @article_outfit.article_id, outfit_id: @article_outfit.outfit_id } }
    end

    assert_redirected_to article_outfit_url(ArticleOutfit.last)
  end

  test "should show article_outfit" do
    get article_outfit_url(@article_outfit)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_outfit_url(@article_outfit)
    assert_response :success
  end

  test "should update article_outfit" do
    patch article_outfit_url(@article_outfit), params: { article_outfit: { article_id: @article_outfit.article_id, outfit_id: @article_outfit.outfit_id } }
    assert_redirected_to article_outfit_url(@article_outfit)
  end

  test "should destroy article_outfit" do
    assert_difference('ArticleOutfit.count', -1) do
      delete article_outfit_url(@article_outfit)
    end

    assert_redirected_to article_outfits_url
  end
end
