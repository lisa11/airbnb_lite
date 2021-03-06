class Guest < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :foreign_key => "guests_id",
             :dependent => :destroy

  has_many   :requests,
             :foreign_key => "guests_id",
             :dependent => :destroy

  has_many   :messages,
             :foreign_key => "hosts_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
