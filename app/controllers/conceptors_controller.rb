class ConceptorsController < ApplicationController
  before_action :set_conceptor, only: %i[show edit update destroy]
  before_action :set_conceptors, only: %i[index]

  # GET /conceptors or /conceptors.json
  def index
    render json: @conceptors
  end

  # GET /conceptors/1 or /conceptors/1.json
  def show
    render json: @conceptor,
           include: {
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

  # GET /conceptors/new
  def new
    @conceptor = Conceptor.new
  end

  # GET /conceptors/1/edit
  def edit
  end

  # POST /conceptors or /conceptors.json
  def create
    @conceptor = Conceptor.new(conceptor_params)

    respond_to do |format|
      if @conceptor.save
        format.html do
          redirect_to conceptor_url(@conceptor),
                      notice: "Conceptor was successfully created."
        end
        format.json { render :show, status: :created, location: @conceptor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @conceptor.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /conceptors/1 or /conceptors/1.json
  def update
    respond_to do |format|
      if @conceptor.update(conceptor_params)
        format.html do
          redirect_to conceptor_url(@conceptor),
                      notice: "Conceptor was successfully updated."
        end
        format.json { render :show, status: :ok, location: @conceptor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @conceptor.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /conceptors/1 or /conceptors/1.json
  def destroy
    @conceptor.destroy

    respond_to do |format|
      format.html do
        redirect_to conceptors_url,
                    notice: "Conceptor was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_conceptor
    @conceptor = Conceptor.find(params[:id])
  end

  def set_conceptors
    @conceptors = Conceptor.all
  end

  # Only allow a list of trusted parameters through.
  def conceptor_params
    params.require(:conceptor).permit(:name, :desc, :website)
  end
end
