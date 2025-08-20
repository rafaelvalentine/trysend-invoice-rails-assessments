class Invoice < ApplicationRecord
    self.table_name = "facture"

    belongs_to :bl, class_name: "BillOfLading", foreign_key: "bl_number", inverse_of: "bill_number"
end
