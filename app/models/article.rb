class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }

  # validates :number, numericality: {only_integer: true}

  # with_options if: :is_admin? do |admin|
  #   admin.validates :password, length: { minimum: 10 }
  #   admin.validates :email, presence: true
  # end

end
