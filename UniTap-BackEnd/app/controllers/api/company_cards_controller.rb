class Api::CompanyCardsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  
  def index
  	render json: CompanyCard.all
  end
  
  ##
  # display a particular card
  #
  def show
  	if(CompanyCard.exists?(params[:id]))
      card = CompanyCard.find(params[:id])
      render status: 200, json: {
        company_cards: card
      }.to_json
    else
      render status: 422, json: {
        message: "Could not find that card."
      }.to_json
    end
  end

  ##
  # Create a new card for the company's database
  #
  def create
    card = CompanyCard.new(card_params)
    if card.save
      render status: 200, json: {
        message: "Successfully created new Company-Card.",
        company_cards: card
      }.to_json
    else
      render status: 422, json: {
  	    message: "Unable to process your request of the server."
      }.to_json
  	end
  end

  ##
  # Delete a certain card in the database
  #
  def destroy
  	if(CompanyCard.exists?(params[:id]))
      card = CompanyCard.find(params[:id])
      card.destroy
      render status: 200, json:{
        message: "Successfully deleted that card."
      }.to_json
    else
      render status: 422, json:{
        message: "Could not delete that card."
      }.to_json 
    end
  end
  
  ##
  # Update a certain card in the company's database
  #
  def update
    if(CompanyCard.exists?(params[:id]))
      card = CompanyCard.find(params[:id])
      card.update(card_params)
      render status: 200, json:{
        message: "Successfully updated",
        company_cards: card
      }.to_json
    else
      render status: 422, json:{
        message: "Could not update that card"
      }.to_json
    end
  end

  ##
  # List of parameters that the api request is allowed to present the server
  #
  private
  def card_params
    params.require("company_card").permit("userid")
  end
end