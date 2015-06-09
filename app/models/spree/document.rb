class Spree::Document < ActiveRecord::Base
  belongs_to :product
  belongs_to :document_type

  validates :name, presence: true
  validates :product, presence: true
  #validates :document_type, presence: true

  has_attached_file :attachment
  validates_attachment :attachment, presence: true, content_type: { content_type: "application/pdf" }

  acts_as_list

  def document_type_name
    document_type.present? ? document_type.name : ''
  end
end
