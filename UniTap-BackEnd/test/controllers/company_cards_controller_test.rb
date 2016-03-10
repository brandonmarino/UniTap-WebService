require 'test_helper'

class CompanyCardsControllerTest < ActionController::TestCase
  setup do
    @company_card = company_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_card" do
    assert_difference('CompanyCard.count') do
      post :create, company_card: { activity: @company_card.activity, cardhash: @company_card.cardhash, phonecrc: @company_card.phonecrc, userid: @company_card.userid }
    end

    assert_redirected_to company_card_path(assigns(:company_card))
  end

  test "should show company_card" do
    get :show, id: @company_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company_card
    assert_response :success
  end

  test "should update company_card" do
    patch :update, id: @company_card, company_card: { activity: @company_card.activity, cardhash: @company_card.cardhash, phonecrc: @company_card.phonecrc, userid: @company_card.userid }
    assert_redirected_to company_card_path(assigns(:company_card))
  end

  test "should destroy company_card" do
    assert_difference('CompanyCard.count', -1) do
      delete :destroy, id: @company_card
    end

    assert_redirected_to company_cards_path
  end
end
