class AddBookInChevals < ActiveRecord::Migration[6.0]
  def change
  	 add_column :chevals, :book, :boolean
  end
end
