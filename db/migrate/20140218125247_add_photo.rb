class AddPhoto < ActiveRecord::Migration
  def change
    add_column :artefacts, :attachment, :string
  end
end
