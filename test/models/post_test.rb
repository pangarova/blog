require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "validate" do
    post = Post.new

    assert_raises ActiveRecord::RecordInvalid do
      post.save!
    end

    assert post.errors[:title].present?
    assert post.errors[:description].present?
  end
end
