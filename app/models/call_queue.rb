class CallQueue < ApplicationRecord
  belongs_to :driver

  scope :ordered, ->() { order(updated_at: :asc) }
end
