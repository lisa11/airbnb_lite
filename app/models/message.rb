class Message < ApplicationRecord
  # Direct associations

  belongs_to :guests,
             :class_name => "Host"

  belongs_to :hosts,
             :class_name => "Guest"

  # Indirect associations

  # Validations

end
