class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { within: %w(Fiction Non-Fiction) }
  validates :content, length: {minimum: 100}
end
