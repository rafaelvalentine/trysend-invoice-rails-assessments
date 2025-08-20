class ChangeNumeroBlToNumber < ActiveRecord::Migration[7.2]
  def change
    rename_column :facture, :numero_bl, :bl_number
    rename_column :bl, :numero_bl, :bill_number
    add_index :bl, :bill_number, unique: true
  end
end
