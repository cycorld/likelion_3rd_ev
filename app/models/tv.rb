class Tv < ActiveRecord::Base
  has_many :comments

  def rating
    total = 0
    comments.each do |c|
      total += c.score
    end
    total.to_f / comments.count
  end
end
