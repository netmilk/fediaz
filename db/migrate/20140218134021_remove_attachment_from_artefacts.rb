class RemoveAttachmentFromArtefacts < ActiveRecord::Migration
  def change
    remove_attachment :artefacts, :photo
  end
end
