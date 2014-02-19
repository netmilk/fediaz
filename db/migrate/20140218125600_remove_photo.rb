class RemovePhoto < ActiveRecord::Migration
  def change
    remove_column :artefacts, :attachment
  end
end
