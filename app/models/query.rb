class Query < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :search_similarity,
                  against: :query,
                  using: {
                    trigram: {
                      threshold: 0.2
                    }
                  }
  validates :query, presence: true
  validates :query, length: { minimum: 3, maximum: 40 }
  validates :user_id, presence: true
end
