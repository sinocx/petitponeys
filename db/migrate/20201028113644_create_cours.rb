class CreateCours < ActiveRecord::Migration[6.0]
  def change
    create_table :cours do |t|
      t.references :moniteur, null: false, foreign_key: true
      t.datetime :heure_date

      t.timestamps
    end
  end
end
