class Listing < ApplicationRecord
  # Direct associations

  belongs_to :host

  has_many   :bookmarks,
             :foreign_key => "listings_id",
             :dependent => :destroy

  has_many   :availabilities,
             :foreign_key => "listings_id",
             :dependent => :destroy

  has_many   :photos,
             :foreign_key => "listings_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
