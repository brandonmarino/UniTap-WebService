class Api::CompanyCardsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  
  def index
    if !(params[:cardhash].nil? || params[:phonecrc].nil?)
  	  if !(CompanyCard.find_by(cardhash: params[:cardhash], phonecrc: params[:phonecrc]).nil?)
        render status: 200, json: {
          message: "Welcome to our business!"
        }
      else
        render status: 422, json: {
          message: "Request Denied."
        }
      end
    elsif !(params[:id].nil?)
      if(CompanyCard.exists?(params[:id]))
        card = CompanyCard.find(params[:id])
        render status: 200, json: {
          company_cards: card
        }.to_json
      end
    elsif !(params[:cardhash].nil?) || !(params[:phonecrc].nil?)
      render status: 422, json:{
        message: "Your request makes no sense."
      }
    else
      render status: 200, json: CompanyCard.all

    end

  end
  
  ##
  # display a particular card
  #
  def show
  	if(!params[:id].nil?)
      if(CompanyCard.exists?(params[:id]))
        card = CompanyCard.find(params[:id])
        render status: 200, json: {
        company_cards: card
      }.to_json
      
      else
        render status: 422, json: {
          message: "Unable to process your request of the server."
        }.to_json
      end
    else
        render status: 422, json: {
          message: "Unable to process your request of the server."
        }.to_json
    end
  end

  ##
  # Create a new card for the company's database
  #
  def create
    if !(params[:cardhash].nil? || params[:phonecrc].nil?)
      if !(CompanyCard.find_by(cardhash: params[:cardhash], phonecrc: params[:phonecrc]).nil?)
        render status: 200, json: {
          message: "Welcome to our business!"
        }
      else
        render status: 422, json: {
          message: "Request Denied."
        }
      end
    elsif !(params[:id].nil?)
      if(CompanyCard.exists?(params[:id]))
        card = CompanyCard.find(params[:id])
        render status: 200, json: {
          company_cards: card
        }.to_json
      end
    elsif !(params[:cardhash].nil?) || !(params[:phonecrc].nil?)
      render status: 422, json:{
        message: "Your request makes no sense."
      }
    else
      render status: 200, json: CompanyCard.all

    end
    #if (params[:cardhash].nil?) || (params[:phonecrc].nil?)
    #  render status: 422, json: {
    #    message: "Card format incorrect.",
    #  }.to_json
    #else
    #  card = CompanyCard.new(card_params)
    #  if card.save
    #    render status: 200, json: {
    #      message: "Successfully created your card.",
    #      company_cards: card
    #    }.to_json
    #  else
    #    render status: 422, json: {
    #   	  message: "Unable to process your request of the server."
    #    }.to_json
  	#  end
    #end

  end

  ##
  # Delete a certain card in the database
  #
  def destroy
    if !(params[:id].nil?)
      if (CompanyCard.exists?(params[:id]))
        card = CompanyCard.find(params[:id])
        card.destroy
        render status: 200, json:{
          message: "Successfully deleted that card."
        }.to_json
      else
        render status: 422, json:{
          message: "Unable to process your request of the server."
        }.to_json 
      end
    else
      render status: 422, json:{
        message: "Unable to process your request of the server."
      }.to_json 
    end
  end
  
  ##
  # Update a certain card in the company's database
  #
  def update
    if !(params[:id].nil?)
      if(CompanyCard.exists?(params[:id]))
        card = CompanyCard.find(params[:id])
        card.update(card_params)
        render status: 200, json:{
          message: "Successfully updated",
          company_cards: card
        }.to_json
      else
        render status: 422, json:{
          message: "Unable to process your request of the server."
        }.to_json
      end
    else
      render status: 422, json:{
          message: "Unable to process your request of the server."
        }.to_json
    end
  end

  ##
  # List of parameters that the api request is allowed to present the server
  #
  private
  def card_params
    params.permit(:company_card, :userid, :cardhash, :phonecrc)
  end
end