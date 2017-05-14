class CreateTaggings < ActiveRecord::Migration[5.1]
  def change
    create_table :taggings do |t|
      t.references :post, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps null:false
    end
  end
end
