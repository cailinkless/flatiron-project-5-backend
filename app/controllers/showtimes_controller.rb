class ShowtimesController < ApplicationController
  before_action :set_showtime, only: [:show, :update, :destroy]

  # GET /showtimes
  def index
    @showtimes = Showtime.all

    render json: @showtimes
  end

  # GET /showtimes/1
  def show
    render json: @showtime
  end

  # POST /showtimes
  def create
    @showtime = Showtime.new(showtime_params)

    if @showtime.save
      render json: @showtime, status: :created, location: @showtime
    else
      render json: @showtime.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /showtimes/1
  def update
    if @showtime.update(showtime_params)
      render json: @showtime
    else
      render json: @showtime.errors, status: :unprocessable_entity
    end
  end

  # DELETE /showtimes/1
  def destroy
    @showtime.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showtime
      @showtime = Showtime.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def showtime_params
      params.require(:showtime).permit(:playbill_id, :start, :end)
    end
end
