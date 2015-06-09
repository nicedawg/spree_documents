class CreateSpreeDocuments < ActiveRecord::Migration
  def change
    create_table :spree_documents do |t|
      t.references :product, index: true, foreign_key: true
      t.references :document_type, index: true, foreign_key: true
      t.string :name
      t.attachment :attachment
      t.integer :position

      t.timestamps null: false
    end
  end
end
