class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|

      t.timestamps
    end
  end
end
