class Book < ApplicationRecord
    belongs_to :user
    has_many :read_counts, dependent: :destroy
end
