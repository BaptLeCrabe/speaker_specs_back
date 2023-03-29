class SpeakersController < ApplicationController
  before_action :set_speakers, only: %i[index]
  before_action :set_speaker, only: %i[show update destroy]

  # GET /speakers
  # GET /speakers.json
  def index
    render json: @speakers, include: %i[conceptor acoustic_load drivers]
  end

  # GET /speakers/1
  # GET /speakers/1.json
  def show
    render json: @speaker, include: %i[conceptor acoustic_load drivers]
  end

  # POST /speakers
  # POST /speakers.json
  def create
    @speaker = Speaker.new(speaker_params)

    if @speaker.save
      render :show, status: :created, location: @speaker
    else
      render json: @speaker.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /speakers/1
  # PATCH/PUT /speakers/1.json
  def update
    if @speaker.update(speaker_params)
      render :show, status: :ok, location: @speaker
    else
      render json: @speaker.errors, status: :unprocessable_entity
    end
  end

  # DELETE /speakers/1
  # DELETE /speakers/1.json
  def destroy
    @speaker.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_speaker
    @speaker = Speaker.find(params[:id])
  end

  def set_speakers
    @speakers = Speaker.all
  end

  # Only allow a list of trusted parameters through.
  def speaker_params
    params.require(:speaker).permit(
      :name,
      :plan_file,
      :conceptor_id,
      :acoustic_load_id,
      :sensitivity,
      :hpf,
      :f3,
      :driver_sizes,
      :frequency_range,
      :hornsrep_file,
      :akabak_file,
      :glb_file
    )
  end
end
