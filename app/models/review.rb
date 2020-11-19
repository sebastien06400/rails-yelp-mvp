class Review < ApplicationRecord

    # RATES = (0..5)

    belongs_to :restaurant

    validates :content, presence: true
    # validates :rating, presence: true

    # validates :rating, inclusion: { in: RATES }

    validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }

    validates :rating, numericality: { only_integer: true }
end
