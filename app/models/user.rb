class User < ActiveRecord::Base
  has_many :favourites, dependent: :destroy
  has_secure_password
  # include ActiveModel::Validations
  
  validates :fname, presence: true

  validates :lname, presence: true
  
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

  validates :password, length: { in: 6..20 }, on: :create

  def full_name
    "#{fname} #{lname}"
  end

end