class Api < ApplicationRecord

  has_many :api_datum, dependent: :destroy

  default_scope { order(:name) }

  # Validations
  validates :name, :url, :host, presence: true
end
