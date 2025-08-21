class ChangeNumeroBlToNumber < ActiveRecord::Migration[7.2]
  def change
    rename_column :remboursement, :numero_bl, :bl_number
    rename_column :facture, :numero_bl, :bl_number
    rename_column :bl, :numero_bl, :bill_number
    rename_column :bl, :id_client, :client_id
    add_index :bl, :bill_number, unique: true, if_not_exists: true
  end
end
