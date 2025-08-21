class RefundRequest < ApplicationRecord
    self.table_name = "remboursement"

    belongs_to :bill_of_lading, foreign_key: "bl_number", inverse_of: "bill_number"
end
