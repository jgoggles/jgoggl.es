require 'test_helper'

class TaglinesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taglines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tagline" do
    assert_difference('Tagline.count') do
      post :create, :tagline => { }
    end

    assert_redirected_to tagline_path(assigns(:tagline))
  end

  test "should show tagline" do
    get :show, :id => taglines(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => taglines(:one).to_param
    assert_response :success
  end

  test "should update tagline" do
    put :update, :id => taglines(:one).to_param, :tagline => { }
    assert_redirected_to tagline_path(assigns(:tagline))
  end

  test "should destroy tagline" do
    assert_difference('Tagline.count', -1) do
      delete :destroy, :id => taglines(:one).to_param
    end

    assert_redirected_to taglines_path
  end
end
