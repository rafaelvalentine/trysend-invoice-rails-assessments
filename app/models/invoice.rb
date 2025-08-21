class Invoice < ApplicationRecord
    self.table_name = "facture"

    belongs_to :bill_of_lading, foreign_key: "bl_number", inverse_of: "bill_number"
end
