class AddPlaceToCours < ActiveRecord::Migration[6.0]
  def change
    add_column :cours, :place, :integer
    add_column :cours, :niveau, :integer
  end
end
