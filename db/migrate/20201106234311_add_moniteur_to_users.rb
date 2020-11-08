class AddMoniteurToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :moniteur, :boolean
  end
end
