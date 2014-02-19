class AddAttachmentToArtefacts < ActiveRecord::Migration
  def change
    add_attachment :artefacts, :photo
  end
end
