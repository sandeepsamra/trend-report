class User < ActiveRecord::Base
  has_many :favourites, dependent: :destroy
  has_secure_password
  include ActiveModel::Validations
  
  validates :fname, presence: true,
                    length: { minimum: 4 }

  validates :lname, presence: true,
                    length: { minimum: 4 }
  
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates :email, presence: true

  validates :username, presence: true

  validates :password,
  length: { in: 6..20 }, on: :create

end