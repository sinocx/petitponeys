class CreateCours < ActiveRecord::Migration[6.0]
  def change
    create_table :cours do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
