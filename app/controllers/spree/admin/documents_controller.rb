module Spree
  module Admin
    class DocumentsController < ResourceController
      before_filter :load_product
      before_filter :load_document_types

      private
        def location_after_destroy
          admin_product_documents_url(@product)
        end

        def location_after_save
          admin_product_documents_url(@product)
        end

        def load_product
          @product = Product.friendly.find(params[:product_id])
        end

        def load_document_types
          @document_types = Spree::DocumentType.all
        end
    end
  end
end
