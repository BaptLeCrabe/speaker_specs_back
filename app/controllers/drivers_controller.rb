class DriversController < ApplicationController
  before_action :set_driver, only: %i[show update destroy]
  before_action :set_drivers, only: %i[index]

  # GET /drivers
  # GET /drivers.json
  def index
    render json: @drivers, include: %i[brand]
  end

  # GET /drivers/1
  # GET /drivers/1.json
  def show
    render json: @driver,
           include: {
             brand: {
             },
             thiele_small: {
             },
             speakers: {
               include: {
                 acoustic_load: {
                 },
                 conceptor: {
                 }
               }
             }
           }
  end

  # POST /drivers
  # POST /drivers.json
  def create
    @driver = Driver.new(driver_params)

    if @driver.save
      render :show, status: :created, location: @driver
    else
      render json: @driver.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /drivers/1
  # PATCH/PUT /drivers/1.json
  def update
    if @driver.update(driver_params)
      render :show, status: :ok, location: @driver
    else
      render json: @driver.errors, status: :unprocessable_entity
    end
  end

  # DELETE /drivers/1
  # DELETE /drivers/1.json
  def destroy
    @driver.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_driver
    @driver = Driver.find(params[:id])
  end

  def set_drivers
    @drivers = Driver.all
  end

  # Only allow a list of trusted parameters through.
  def driver_params
    params.require(:driver).permit(
      :name,
      :brand_id,
      :size,
      :type,
      :spl,
      :frequency_range,
      :loadspeaker_link,
      :doc_files,
      :glb_file,
      :thiele_small_id
    )
  end
end
