class Genre < ActiveRecord::Base
    belongs_to :movies
    validates :name, presence:true
end
