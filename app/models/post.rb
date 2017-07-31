class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 4 }
  validates :description, presence: true
end

# Presence validation
# Length Validation
# rails validation guide

# post = Post.create(title: 'something', description: 'sth')
# post.invalid?

# post = Posr.create!
# raise ActiveRecord::RecordInvalid

# post = Post.new
# post.title = 'something'
# post.description = 'sth'

# post.save # true/false
# post.save! # raise ActiveRecord::RecordInvalid

# post.update(title: 'something else') #true / false
# post.updat_attribute(title: 'something else') # raise ActiveRecord::RecordInvalid

# post.errors[:title]
# post.errors.details[:title]

# if post vs. post.present? => first is better

# post.save!(validate: false) # without validations