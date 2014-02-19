class CreateArtefacts < ActiveRecord::Migration
  def change
    create_table :artefacts do |t|
      t.string :name
      t.string :location
      t.string :technique
      t.string :exhibited 
      t.string :team
      t.text :description

      t.timestamps
    end
  end
end
