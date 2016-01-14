class Movie < ActiveRecord::Base
    searchkick autocomplete: ['title']
    belongs_to :director
    belongs_to :producer
    belongs_to :writer
    belongs_to :star_rating
    belongs_to :year
    belongs_to :rating
    belongs_to :studio
    has_many :actors
    has_many :categorizations
    has_many :genres, :through => :categorizations

    validates :title, presence:true
    validates :plot, presence:true
    validates :link, presence:true
    validates :release_date, presence:true
    validates :director_id, presence:true
    validates :writer_id, presence:true
#validates :genre_id, presence:true
    validates :year_id, presence:true
    validates :rating_id, presence:true

end
class LinkValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    valid = begin
      URI.parse(value).kind_of?(URI::HTTP)
    rescue URI::InvalidURIError
      false
    end
    unless valid
      record.errors[attribute] << (options[:message] || "is an invalid URL")
    end
  end

end
