class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable, :rememberable
  devise :database_authenticatable, :registerable, :recoverable, :validatable
  
  validate :validate_password
  

  enum role: [:admin, :user]


  def set_role(role)
  	update(role: role)
  end

  def validate_password
  	reg = /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}\z/
  	unless reg.match(password)
  		errors.add(:password, "Password contains minimum eight characters, at least one uppercase letter, one lowercase letter and one number")
  	end
  end
end
