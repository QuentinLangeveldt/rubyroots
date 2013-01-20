class CreateGitgems < ActiveRecord::Migration
  def change
    create_table :gitgems do |t|
      t.string :name
      t.text :description
      t.string :version

      t.timestamps
    end
  end
end
