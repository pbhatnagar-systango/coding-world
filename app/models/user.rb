class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
  has_attached_file :image, styles: { large: "600x600>",medium: "300x300>", thumb: "100x100>" }  
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.firstname = auth.extra.raw_info.first_name   # assuming the user model has a name
      user.lastname = auth.info.name
      user.dob = auth.extra.raw_info.birthday
      user.gender = auth.extra.raw_info.name
      user.country = auth.extra.raw_info.location
      user.image = auth.extra.raw_info.picture # assuming the user model has an image   
    end
  end
  has_one :answer
end