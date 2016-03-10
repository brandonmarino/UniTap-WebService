class Api::CompanyCardsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
  	render json: CompanyCard.all
  end

  def show
  	card = CompanyCard.find(params[:id])
  	render json: card
  end

  def create
  	card = CompanyCard.new(card_params)
  	if card.save
  		head 200
  		#render json: {
  	#		status: 200,
  	#		message: "Successfully created new Company-Card."
  	#		company_card: card
  	#	}
  	else
  		head 500
  	end
  end

  private
  def card_params
  	params.require("company_card").permit("userid")
  end
end