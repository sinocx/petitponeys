class CreateChevals < ActiveRecord::Migration[6.0]
  def change
    create_table :chevals do |t|
      t.string :nom
      t.text :description
      t.date :naissance

      t.timestamps
    end
  end
end
