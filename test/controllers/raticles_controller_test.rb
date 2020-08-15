require 'test_helper'

class RaticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @raticle = raticles(:one)
  end

  test "should get index" do
    get raticles_url
    assert_response :success
  end

  test "should get new" do
    get new_raticle_url
    assert_response :success
  end

  test "should create raticle" do
    assert_difference('Raticle.count') do
      post raticles_url, params: { raticle: { author: @raticle.author, text: @raticle.text, title: @raticle.title } }
    end

    assert_redirected_to raticle_url(Raticle.last)
  end

  test "should show raticle" do
    get raticle_url(@raticle)
    assert_response :success
  end

  test "should get edit" do
    get edit_raticle_url(@raticle)
    assert_response :success
  end

  test "should update raticle" do
    patch raticle_url(@raticle), params: { raticle: { author: @raticle.author, text: @raticle.text, title: @raticle.title } }
    assert_redirected_to raticle_url(@raticle)
  end

  test "should destroy raticle" do
    assert_difference('Raticle.count', -1) do
      delete raticle_url(@raticle)
    end

    assert_redirected_to raticles_url
  end
end
