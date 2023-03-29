class ThieleSmallsController < ApplicationController
  before_action :set_thiele_small, only: %i[show update destroy]

  # GET /thiele_smalls
  # GET /thiele_smalls.json
  def index
    @thiele_smalls = ThieleSmall.all
  end

  # GET /thiele_smalls/1
  # GET /thiele_smalls/1.json
  def show
  end

  # POST /thiele_smalls
  # POST /thiele_smalls.json
  def create
    @thiele_small = ThieleSmall.new(thiele_small_params)

    if @thiele_small.save
      render :show, status: :created, location: @thiele_small
    else
      render json: @thiele_small.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /thiele_smalls/1
  # PATCH/PUT /thiele_smalls/1.json
  def update
    if @thiele_small.update(thiele_small_params)
      render :show, status: :ok, location: @thiele_small
    else
      render json: @thiele_small.errors, status: :unprocessable_entity
    end
  end

  # DELETE /thiele_smalls/1
  # DELETE /thiele_smalls/1.json
  def destroy
    @thiele_small.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_thiele_small
    @thiele_small = ThieleSmall.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def thiele_small_params
    params.require(:thiele_small).permit(
      :driver_id,
      :resonant_frequency,
      :qes,
      :qms,
      :qts,
      :vas,
      :re,
      :zmin,
      :le,
      :force_factor,
      :rms,
      :cms,
      :mmd,
      :mms,
      :sd,
      :edd,
      :driver_xmax,
      :xlim,
      :xmaxvd,
      :efficiency,
      :ebp
    )
  end
end
