# frozen_string_literal: true

class Post < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_title_and_content,
                  against: {
                    title: 'A',
                    content: 'B'
                  },
                  associated_against: {
                    rich_text_content: :body
                  },
                  using: {
                    tsearch: {
                      prefix: true
                    }
                  }

  validates_presence_of :title
  has_rich_text :content
  has_many :comments, dependent: :destroy
end
