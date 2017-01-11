class Listing < ApplicationRecord
  # Direct associations

  has_many   :photos,
             :foreign_key => "listings_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
