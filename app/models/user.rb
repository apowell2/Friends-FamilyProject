class User < ApplicationRecord
  has_many :books
  has_many :product_reviews

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def dismiss_alert
    self.has_new_email = false
    save
  end

end
