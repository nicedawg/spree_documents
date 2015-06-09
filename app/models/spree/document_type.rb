module Spree
  class DocumentType < ActiveRecord::Base
    has_many :documents, dependent: :restrict_with_error
    before_destroy :check_for_documents

    validates :name, presence: true, uniqueness: { case_sensitive: false }
    validates :internal_name, presence: true
  end
end
