class CreateReservationChevals < ActiveRecord::Migration[6.0]
  def change
    create_table :reservation_chevals do |t|
      t.references :cheval, null: false, foreign_key: true, default: nil
      t.references :user, null: false, foreign_key: true, default: nil
      t.references :cour, null: false, foreign_key: true, default: nil

      t.timestamps
    end
  end
end
