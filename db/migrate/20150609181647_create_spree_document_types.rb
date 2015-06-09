class CreateSpreeDocumentTypes < ActiveRecord::Migration
  def change
    create_table :spree_document_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
