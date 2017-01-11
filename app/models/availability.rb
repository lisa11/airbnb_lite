class Availability < ApplicationRecord
  # Direct associations

  has_many   :requests,
             :foreign_key => "availabilities_id",
             :dependent => :destroy

  belongs_to :listings

  # Indirect associations

  # Validations

end
