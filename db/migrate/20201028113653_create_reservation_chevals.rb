class CreateReservationChevals < ActiveRecord::Migration[6.0]
  def change
    create_table :reservation_chevals do |t|
      t.references :cheval, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :cour, null: false, foreign_key: true

      t.timestamps
    end
  end
end
