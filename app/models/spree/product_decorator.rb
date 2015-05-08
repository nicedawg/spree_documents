Spree::Product.class_eval do
  has_many :documents, -> { order(position: :asc) }, :as => :viewable
end
