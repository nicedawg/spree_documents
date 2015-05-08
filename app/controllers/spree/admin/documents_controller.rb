module Spree
  module Admin
    class DocumentsController < ResourceController
      before_filter :load_product

      create.before :set_viewable
      update.before :set_viewable

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

        def set_viewable
          @document.viewable_type = 'Spree::Product'
          @document.viewable_id = params[:document][:viewable_id]
        end
    end
  end
end
