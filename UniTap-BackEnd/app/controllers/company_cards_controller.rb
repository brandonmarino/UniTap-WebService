class CompanyCardsController < ApplicationController
  before_action :set_company_card, only: [:show, :edit, :update, :destroy]

  # GET /company_cards
  # GET /company_cards.json
  def index
    @company_cards = CompanyCard.all
  end

  # GET /company_cards/1
  # GET /company_cards/1.json
  def show
  end

  # GET /company_cards/new
  def new
    @company_card = CompanyCard.new
  end

  # GET /company_cards/1/edit
  def edit
  end

  # POST /company_cards
  # POST /company_cards.json
  def create
    @company_card = CompanyCard.new(company_card_params)

    respond_to do |format|
      if @company_card.save
        format.html { redirect_to @company_card, notice: 'Company card was successfully created.' }
        format.json { render :show, status: :created, location: @company_card }
      else
        format.html { render :new }
        format.json { render json: @company_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_cards/1
  # PATCH/PUT /company_cards/1.json
  def update
    respond_to do |format|
      if @company_card.update(company_card_params)
        format.html { redirect_to @company_card, notice: 'Company card was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_card }
      else
        format.html { render :edit }
        format.json { render json: @company_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_cards/1
  # DELETE /company_cards/1.json
  def destroy
    @company_card.destroy
    respond_to do |format|
      format.html { redirect_to company_cards_url, notice: 'Company card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_card
      #if(params)
      @company_card = CompanyCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_card_params
      params.require(:company_card).permit(:userid, :cardhash, :phonecrc, :activity)
      #params.require(:company_card).permit(:userid, :cardhash, :phonecrc, :activity)
    
    end
end
