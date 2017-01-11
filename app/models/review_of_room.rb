class ReviewOfRoom < ApplicationRecord
  # Direct associations

  has_one    :booking,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
