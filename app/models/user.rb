class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :username,  uniqueness: { case_sensitive: false  }, format: { with: /\A[a-zA-Z0-9]+\Z/ }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   # Allows to use the 'login' variable some where else in the code
  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end

  # Overwrites Devise's find_for_database_authentication method in User model
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end
end