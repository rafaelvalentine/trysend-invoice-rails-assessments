class AddBillOfLadingReferenceToInvoice < ActiveRecord::Migration[7.2]
  def change
     # add_reference :facture, :bl,  null: false,  foreign_key: { to_table: :bl }
     add_foreign_key :facture, :bl, column: :bl_number, primary_key: :"bill_number", on_delete: :cascade
  end
end
