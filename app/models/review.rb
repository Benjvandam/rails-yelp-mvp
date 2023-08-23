class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: (0..5).to_a }, numericality: { only_integer: true }

  def stars
    number_stars = ""
    rating.times do
      number_stars = "#{number_stars}⭐"
    end

    return number_stars
  end

end
