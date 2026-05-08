class Post < ApplicationRecord
  belongs_to :user
  belongs_to :body_part
end
