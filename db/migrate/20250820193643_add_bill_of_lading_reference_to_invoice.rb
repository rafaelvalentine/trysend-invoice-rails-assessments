class AddBillOfLadingReferenceToInvoice < ActiveRecord::Migration[7.2]
  def change
     add_foreign_key :remboursement, :bl, column: :bl_number, primary_key: :"bill_number", on_delete: :cascade
     add_foreign_key :facture, :bl, column: :bl_number, primary_key: :"bill_number", on_delete: :cascade
     add_foreign_key :bl, :client, column: :client_id, primary_key: :"id_client", on_delete: :cascade
  end
end
