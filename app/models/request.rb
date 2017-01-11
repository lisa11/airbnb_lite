class Request < ApplicationRecord
  # Direct associations

  has_one    :booking,
             :dependent => :destroy

  belongs_to :availabilities

  # Indirect associations

  # Validations

end
