class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  # ログイン時に既に退会済みだった場合
  def active_for_authentication?
    super && (user_status == false)
  end
  
end
