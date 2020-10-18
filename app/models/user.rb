class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable, :rememberable
  devise :database_authenticatable, :registerable, :recoverable, :validatable

  enum role: [:admin, :user]


  def set_role(role)
  	update(role: role)
  end
end