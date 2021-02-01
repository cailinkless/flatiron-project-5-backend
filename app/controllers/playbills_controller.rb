class PlaybillsController < ApplicationController
  before_action :set_playbill, only: [:show, :update, :destroy]

  # GET /playbills
  def index
    @playbills = Playbill.all

    render json: @playbills
  end

  # GET /playbills/1
  def show
    render json: @playbill
  end

  # POST /playbills
  def create
    @playbill = Playbill.new(playbill_params)

    if @playbill.save
      render json: @playbill, status: :created, location: @playbill
    else
      render json: @playbill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /playbills/1
  def update
    if @playbill.update(playbill_params)
      render json: @playbill
    else
      render json: @playbill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /playbills/1
  def destroy
    @playbill.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playbill
      @playbill = Playbill.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def playbill_params
      params.require(:playbill).permit(:title, :about)
    end
end
