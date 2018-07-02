class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :Post
  #åattr_accessor :email, :password, :password_confirmation, :remember_me, :name


end
