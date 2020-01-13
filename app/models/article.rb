class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }


  # enum publish: {publish: 1, not_publish: 0}

  # validates :number, numericality: {only_integer: true}

  # with_options if: :is_admin? do |admin|
  #   admin.validates :password, length: { minimum: 10 }
  #   admin.validates :email, presence: true
  # end

end
