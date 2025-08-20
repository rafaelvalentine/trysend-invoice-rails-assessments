class Api::V1::InvoicesController < ApplicationController
  def index
    data = Invoice.all
     # render json: invoice
     json_response(status: 200, data: data, message: "all invoices")
  end

   def overdue
    data = Invoice.all
     # render json: invoice
     json_response(status: 200, data: data, message: "all invoices")
  end

   def generate
    data = Invoice.all
     # render json: invoice
     json_response(status: 200, data: data, message: "all invoices")
  end
end
