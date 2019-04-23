# frozen_string_literal: true

class Episode < ApplicationRecord
  validates :mp3_file, presence: true
  validates :show_notes, presence: true
  validates :rating, presence: true
  validates :show_notes, presence: true

  belongs_to :podcast
end
