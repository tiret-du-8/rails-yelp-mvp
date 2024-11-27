class Review < ApplicationRecord
  # Un avis doit appartenir à un restaurant.
  belongs_to :restaurant
  # Un avis doit avoir un contenu.
  validates :content, presence: true
  # Un avis doit avoir une note.
  validates :rating, presence: true
  # La note d’un avis doit être un nombre entre 0 et 5.
  validates :rating, numericality: { greater_than_or_equal_to: 0 }
  validates :rating, numericality: { less_than_or_equal_to: 5 }
  # La note d’un avis doit être un entier. Par exemple, un avis avec une note de 2,5 doit être invalide !
  validates :rating, numericality: { only_integer: true }
end
