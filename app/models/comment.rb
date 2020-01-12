class Comment < ApplicationRecord
  belongs_to :article

  # validate do |comment|
  #   comment.must_be_friends
  # end
  # def must_be_friends
  #   errors.add(:base, 'Must be friends to leave a comment') unless commenter.friend_of?(commentee)
  # end
  #
end
