class Message < ApplicationRecord
  # Direct associations

  belongs_to :hosts,
             :class_name => "Guest"

  # Indirect associations

  # Validations

end
