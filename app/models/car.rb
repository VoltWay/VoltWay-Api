class Car < ApplicationRecord
  has_and_belongs_to_many :users
  enum :charge_port, [:ccs, :CHAdeMO, :type2, :schuko, :type3a]
end