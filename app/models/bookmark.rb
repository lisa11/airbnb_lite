class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :guests

  belongs_to :listings

  # Indirect associations

  # Validations

end
