class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
   
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:token_authenticatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:admin,:avatar
  # attr_accessible :title, :body

  validates :email , :presence => true, :uniqueness => true
  has_and_belongs_to_many :categories
  has_attached_file :avatar,  :styles => { :medium => "100x100>", :thumb => "60x60#" }

  
end
