class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :name
      t.integer :weight
      t.integer :artefact_id

      t.timestamps
    end
    add_attachment :attachments, :asset

  end
end
