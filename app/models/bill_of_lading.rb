class BillOfLading < ApplicationRecord
     self.table_name = "bl"


     belongs_to :customer, foreign_key: "client_id", inverse_of: "id_client"
     has_many :invoices, foreign_key: "bill_number", inverse_of: "bl_number"
     has_many :refund_requests, foreign_key: "bill_number", inverse_of: "bl_number"
end
