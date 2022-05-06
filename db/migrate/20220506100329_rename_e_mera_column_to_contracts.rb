class RenameEMeraColumnToContracts < ActiveRecord::Migration[6.1]
  def change
    rename_column :contracts, :e_mara, :e_mail
  end
end
