class Request < ApplicationRecord
  # Direct associations

  belongs_to :guest,
             :foreign_key => "guests_id"

  has_one    :booking,
             :dependent => :destroy

  belongs_to :availabilities

  # Indirect associations

  # Validations

end
