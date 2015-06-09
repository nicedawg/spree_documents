class AddInternalNameToSpreeDocumentTypes < ActiveRecord::Migration
  def change
    add_column :spree_document_types, :internal_name, :string
  end
end
