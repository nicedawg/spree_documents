Deface::Override.new(:virtual_path => "spree/admin/shared/_product_tabs",
                     :name => "add_documents_tab",
                     :insert_bottom => "[data-hook='admin_product_tabs']",
                     :partial => "spree/shared/documents_tabs",
                     :disabled => false)
