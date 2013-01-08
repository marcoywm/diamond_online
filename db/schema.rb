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

ActiveRecord::Schema.define(:version => 20130104212557) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "province_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "cities", ["province_id"], :name => "index_cities_on_province_id"

  create_table "company_infos", :force => true do |t|
    t.string   "address"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "info"
  end

  create_table "customers", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "address"
    t.string   "city"
    t.string   "email"
    t.string   "postCode"
    t.string   "userName"
    t.string   "password"
    t.string   "phone"
    t.string   "pay_method"
    t.decimal  "pur_amount"
    t.integer  "province_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "customers", ["province_id"], :name => "index_customers_on_province_id"

  create_table "images", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "product_id"
  end

  create_table "line_items", :force => true do |t|
    t.decimal  "price_purchase"
    t.integer  "quantity"
    t.integer  "product_id"
    t.integer  "order_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "cart_id"
  end

  add_index "line_items", ["order_id"], :name => "index_line_items_on_order_id"
  add_index "line_items", ["product_id"], :name => "index_line_items_on_product_id"

  create_table "orders", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "address"
    t.string   "city"
    t.string   "email"
    t.string   "postCode"
    t.datetime "create_at"
    t.string   "pay_method"
    t.decimal  "amount"
    t.integer  "inv_num"
    t.integer  "province_id"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "status"
    t.string   "phone"
  end

  add_index "orders", ["customer_id"], :name => "index_orders_on_customer_id"
  add_index "orders", ["province_id"], :name => "index_orders_on_province_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "des"
    t.decimal  "price"
    t.string   "status"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "stock_quantity"
    t.string   "category"
  end

  create_table "provinces", :force => true do |t|
    t.string   "name"
    t.decimal  "gst_rate"
    t.decimal  "pst_rate"
    t.decimal  "hst_rate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tabes", :force => true do |t|
    t.string   "s"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "table_products", :force => true do |t|
    t.string   "name"
    t.string   "product"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
