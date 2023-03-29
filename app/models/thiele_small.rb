class ThieleSmall < ApplicationRecord
  belongs_to :driver
  accepts_nested_attributes_for :driver
end
