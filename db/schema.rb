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

ActiveRecord::Schema.define(version: 2022_03_17_171413) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "autors", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generos", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "livros", force: :cascade do |t|
    t.string "nome"
    t.string "autor"
    t.bigint "genero_id"
    t.string "ano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "autor_id"
    t.bigint "titulo_id"
    t.index ["autor_id"], name: "index_livros_on_autor_id"
    t.index ["genero_id"], name: "index_livros_on_genero_id"
    t.index ["titulo_id"], name: "index_livros_on_titulo_id"
  end

  create_table "titulos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "livros", "autors"
  add_foreign_key "livros", "generos"
  add_foreign_key "livros", "titulos"
end
