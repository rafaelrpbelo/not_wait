class PaymentQueue < ApplicationRecord
  validates :name, presence: true
end
