class CreateRefundRequests < ActiveRecord::Migration[7.2]
  def change
    create_table :remboursement if_not_exists: true do |t|
      t.timestamps
    end
  end
end
