class Painting < ActiveRecord::Base
  attr_accessible :title, :year, :medium, :style, :image, :artist_id

  belongs_to :artist

  validates_presence_of :year, :artist
  validates_uniqueness_of :title

  validate :ian

  def ian
    if self.year.to_i > Time.now.year
      errors.add(:year, "Year is in the future")
    end 
  end

end
