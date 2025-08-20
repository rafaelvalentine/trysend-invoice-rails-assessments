# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_08_20_193643) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bl", primary_key: "id_bl", id: :integer, default: nil, force: :cascade do |t|
    t.integer "id_upload"
    t.datetime "date_upload", precision: 0
    t.string "bill_number", limit: 9, null: false
    t.integer "id_client"
    t.string "consignee_code", limit: 20
    t.string "consignee_name", limit: 60
    t.string "notified_code", limit: 20
    t.string "notified_name", limit: 60
    t.string "vessel_name", limit: 30
    t.string "vessel_voyage", limit: 10
    t.datetime "arrival_date", precision: 0, default: -> { "now()" }
    t.integer "freetime"
    t.integer "nbre_20pieds_sec"
    t.integer "nbre_40pieds_sec"
    t.integer "nbre_20pieds_frigo"
    t.integer "nbre_40pieds_frigo"
    t.integer "nbre_20pieds_special"
    t.integer "nbre_40pieds_special"
    t.string "reef", limit: 1, default: ""
    t.string "type_depotage", limit: 30
    t.datetime "date_validite", precision: 0
    t.string "statut", limit: 30
    t.integer "exempte", limit: 2, default: 0, null: false
    t.integer "blocked_for_refund", limit: 2, default: 0, null: false
    t.string "reference", limit: 60
    t.text "comment"
    t.integer "valide", limit: 2
    t.string "released_statut", limit: 20
    t.text "released_comment"
    t.string "operator", limit: 20
    t.string "atp", limit: 30
    t.integer "consignee_caution", limit: 2, default: 0, null: false
    t.string "service_contract", limit: 200
    t.string "bank_account", limit: 30
    t.string "bank_name", limit: 30
    t.string "emails", limit: 60
    t.string "telephone", limit: 20
    t.string "place_receipt", limit: 60
    t.string "place_delivery", limit: 60
    t.string "port_loading", limit: 60
    t.string "port_discharge", limit: 60
    t.index ["arrival_date"], name: "arrival_date"
    t.index ["bill_number"], name: "index_bl_on_bill_number", unique: true
    t.index ["bill_number"], name: "numero_bl"
    t.index ["consignee_code"], name: "consignee_code"
    t.index ["consignee_name"], name: "consignee_name"
    t.index ["reef"], name: "reef"
  end

  create_table "client", primary_key: "id_client", id: :integer, default: nil, force: :cascade do |t|
    t.string "nom", limit: 60, null: false
    t.string "statut", limit: 20
    t.string "code_client", limit: 20
    t.string "nom_groupe", limit: 150, null: false
    t.integer "paie_caution", limit: 2, null: false
    t.integer "freetime_frigo"
    t.integer "freetime_sec"
    t.integer "prioritaire", limit: 2
    t.integer "salesrepid"
    t.integer "financerepid"
    t.integer "cservrepid"
    t.datetime "date_validite", precision: 0
    t.string "operator", limit: 20
  end

  create_table "facture", primary_key: "id_facture", id: :integer, default: nil, force: :cascade do |t|
    t.string "reference", limit: 10, null: false
    t.string "bl_number", limit: 9, null: false
    t.string "code_client", limit: 20, null: false
    t.string "nom_client", limit: 60, null: false
    t.decimal "montant_facture", precision: 12, null: false
    t.decimal "montant_orig", precision: 12, scale: 2
    t.string "devise", limit: 6, default: "XOF"
    t.string "statut", limit: 10, default: "init", null: false
    t.datetime "date_facture", precision: 0, null: false
    t.integer "id_utilisateur", null: false
    t.string "create_type_utilisateur", limit: 20
    t.datetime "created_at", precision: 0, null: false
    t.integer "id_utilisateur_update"
    t.datetime "updated_at", precision: 0

    t.unique_constraint ["reference"], name: "unique_reference"
  end

  create_table "remboursement", primary_key: "id_remboursement", id: :integer, default: nil, force: :cascade do |t|
    t.string "numero_bl", limit: 9, null: false
    t.string "montant_demande", limit: 15
    t.string "refund_amount", limit: 15
    t.string "deduction", limit: 15
    t.string "statut", limit: 10, default: "PENDING"
    t.integer "id_transitaire", null: false
    t.integer "id_transitaire_maison"
    t.integer "transitaire_notifie", limit: 2
    t.integer "maison_notifie", limit: 2
    t.integer "banque_notifie", limit: 2
    t.datetime "date_demande", precision: 0
    t.datetime "date_refund_traite", precision: 0
    t.string "type_paiement", limit: 10
    t.string "pret", limit: 10
    t.string "soumis", limit: 10
    t.string "consignee_code", limit: 14
    t.string "refund_party_name", limit: 200
    t.string "beneficiaire", limit: 20
    t.string "deposit_amount", limit: 15
    t.string "reason_for_refund", limit: 200
    t.string "remarks", limit: 250
    t.string "co_code", limit: 20
    t.text "zm_doc_no"
    t.string "gl_posting_doc", limit: 15
    t.string "clearing_doc", limit: 15
    t.string "email_address", limit: 60
    t.string "type_depotage", limit: 40
    t.integer "accord_client", limit: 2
    t.text "comment"
    t.string "reference", limit: 30
    t.datetime "date_agent_notified", precision: 0
    t.datetime "date_agency_notified", precision: 0
    t.datetime "date_client_notified", precision: 0
    t.datetime "date_banque_notified", precision: 0
    t.string "email_agency", limit: 60
    t.string "email_client", limit: 60
    t.index ["date_demande"], name: "date_demande"
    t.index ["reason_for_refund"], name: "reason_for_refund"
    t.index ["statut"], name: "statut"
  end

  add_foreign_key "facture", "bl", column: "bl_number", primary_key: "bill_number", on_delete: :cascade
end
