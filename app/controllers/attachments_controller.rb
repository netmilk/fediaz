class AttachmentsController < ApplicationController
  before_action :set_attachment, only: [:destroy]

  # DELETE /artefacts
  # DELETE /artefacts.json
  def destroy
    @attachment.destroy
    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end

  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attachment
      @asset = Attachment.find(params[:id])
    end
end