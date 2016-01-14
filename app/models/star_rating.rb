class StarRating < ActiveRecord::Base
    has_many :movies   
    validates :rating, numericality: { only_integer: true }    
end
