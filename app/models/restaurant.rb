class Restaurant < ApplicationRecord

CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

has_many :reviews, dependent: :destroy

validates :phone_number, presence: true

validates :name, presence: true
validates :address, presence: true
# validates :category, presence: true

validates :category, inclusion: { in: CATEGORIES}

end
