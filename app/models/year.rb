class Year < ActiveRecord::Base
    has_many :movies   
    validates :year, presence: true, format: {with: /(19|20)\d{2}/i, message: "should be a four-digit year"}
    validates :year, numericality: { only_integer: true }   
end
