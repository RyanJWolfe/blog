# frozen_string_literal: true

class Post < ApplicationRecord
  include PgSearch::Model
  # pg_search_scope :search_by_title_and_content, against: [:title, :content]

  validates_presence_of :title
  has_rich_text :content
  has_many :comments, dependent: :destroy
end
