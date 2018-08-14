class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :length, presence: true

  def self.total_play_count
    sum(:play_count)
  end

  def self.average_play_count
    average(:play_count)
  end
end
