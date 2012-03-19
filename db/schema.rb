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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120308145223) do

  create_table "categories", :id => false, :force => true do |t|
    t.integer  "id",                  :limit => 8, :null => false
    t.datetime "created_at"
    t.string   "name"
    t.integer  "parent_id",           :limit => 8
    t.string   "permalink"
    t.integer  "provider_id",         :limit => 8
    t.string   "source_object_id"
    t.integer  "subcategories_count",              :null => false
    t.datetime "updated_at"
    t.integer  "version",                          :null => false
  end

  create_table "product_attribute_metas", :id => false, :force => true do |t|
    t.integer  "id",          :limit => 8, :null => false
    t.datetime "created_at"
    t.string   "description"
    t.integer  "is_valid",                 :null => false
    t.string   "name"
    t.integer  "provider_id", :limit => 8
    t.datetime "updated_at"
  end

  add_index "product_attribute_metas", ["name"], :name => "myproductattributenameindex"

  create_table "providers", :id => false, :force => true do |t|
    t.integer  "id",         :limit => 8, :null => false
    t.datetime "created_at"
    t.string   "name"
    t.string   "permalink"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
