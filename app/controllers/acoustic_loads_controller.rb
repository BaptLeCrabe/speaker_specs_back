class AcousticLoadsController < ApplicationController
  before_action :set_acoustic_load, only: %i[ show update destroy ]

  # GET /acoustic_loads
  # GET /acoustic_loads.json
  def index
    @acoustic_loads = AcousticLoad.all
  end

  # GET /acoustic_loads/1
  # GET /acoustic_loads/1.json
  def show
  end

  # POST /acoustic_loads
  # POST /acoustic_loads.json
  def create
    @acoustic_load = AcousticLoad.new(acoustic_load_params)

    if @acoustic_load.save
      render :show, status: :created, location: @acoustic_load
    else
      render json: @acoustic_load.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /acoustic_loads/1
  # PATCH/PUT /acoustic_loads/1.json
  def update
    if @acoustic_load.update(acoustic_load_params)
      render :show, status: :ok, location: @acoustic_load
    else
      render json: @acoustic_load.errors, status: :unprocessable_entity
    end
  end

  # DELETE /acoustic_loads/1
  # DELETE /acoustic_loads/1.json
  def destroy
    @acoustic_load.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acoustic_load
      @acoustic_load = AcousticLoad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def acoustic_load_params
      params.require(:acoustic_load).permit(:name)
    end
end
