class Booking < ApplicationRecord
  # Direct associations

  belongs_to :review_of_room

  belongs_to :review_of_guest

  belongs_to :request

  # Indirect associations

  # Validations

end
