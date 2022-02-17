class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  # A bookmark must be linked to a movie and a list,
  # and the [movie, list] pairings should be unique.
end
