module Spree
  module VariantDecorator
    def self.prepended(base)
      base.has_many :favorites, as: :favoritable, dependent: :destroy
      base.has_many :favorite_users, through: :favorites, class_name: 'Spree::User', source: :user

      base.scope :favorite, -> { joins(:favorites).distinct }
      base.scope :order_by_favorite_users_count, ->(asc = false) { order(favorite_users_count: (asc ? 'asc' : 'desc').to_s) }
    end
  end
end
::Spree::Variant.prepend Spree::VariantDecorator
