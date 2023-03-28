class Video < ApplicationRecord
  before_create :gen_random_votes

  def gen_random_votes
    self.upvotes = rand(1..100)
    self.downvotes = rand(1..100)
  end
end
