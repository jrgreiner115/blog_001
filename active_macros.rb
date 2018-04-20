class Musician < ActiveRecord::Base
  has_many :instruments
  has_many :songs, through: :instruments
end

class Instrument < ActiveRecord::Base
  belongs_to :musician
  has_many :songs
end

class Song < ActiveRecord::Base
  belongs_to :song
end
