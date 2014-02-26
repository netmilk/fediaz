class AddPublishedToArtefacts < ActiveRecord::Migration
  def change
    add_column :artefacts, :published, :boolean
  end
end
