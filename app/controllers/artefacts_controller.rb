class ArtefactsController < ApplicationController
  before_action :set_artefact, only: [:show, :edit, :update, :destroy]

  layout 'admin'
  # GET /artefacts
  # GET /artefacts.json
  def index
    @artefacts = Artefact.all
  end

  # GET /artefacts/1
  # GET /artefacts/1.json
  def show
  end

  # GET /artefacts/new
  def new
    @artefact = Artefact.new
    @artefact.attachments.build
  end

  # GET /artefacts/1/edit
  def edit
    @artefact.attachments.build
  end

  # POST /artefacts
  # POST /artefacts.json
  def create
    @artefact = Artefact.new(artefact_params)

    respond_to do |format|
      if @artefact.save
        format.html { redirect_to @artefact, notice: 'Artefact was successfully created.' }
        format.json { render action: 'show', status: :created, location: @artefact }
      else
        format.html { render action: 'new' }
        format.json { render json: @artefact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artefacts/1
  # PATCH/PUT /artefacts/1.json
  def update
    respond_to do |format|
      if @artefact.update(artefact_params)
        format.html { redirect_to @artefact, notice: 'Artefact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @artefact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artefacts/1
  # DELETE /artefacts/1.json
  def destroy
    @artefact.destroy
    respond_to do |format|
      format.html { redirect_to artefacts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artefact
      @artefact = Artefact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artefact_params
      params.require(:artefact).permit(:name, :location, :technique, :team, :published, :description, {:attachments_attributes => [:asset]} )
    end


end
