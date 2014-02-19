class AddAttachmetsArtefactJoinTable < ActiveRecord::Migration
  def change
    create_table :artefacts_attachments do |t|
      t.integer :attachment_id
      t.integer :artefact_id
    end
  end
end
