# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140709160613) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Libro_Diario", id: false, force: true do |t|
    t.date    "Fecha",                                null: false
    t.text    "Tipo_de_Cambio",                       null: false
    t.text    "Cuenta",                               null: false
    t.float   "Deber",                                null: false
    t.float   "Haber",                                null: false
    t.text    "Glosario"
    t.boolean "Transaccion_Obsoleta", default: false, null: false
    t.integer "Tipo_de_Cuenta",                       null: false
    t.integer "ID",                                   null: false
  end

  create_table "Plan_de_Cuentas", id: false, force: true do |t|
    t.text "Descripcion"
    t.text "Codificacion", null: false
  end

  create_table "trecarga_developments", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
