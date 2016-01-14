class Writer < ActiveRecord::Base
    has_many :movies   
    validates :first_name, presence:true
    validates :last_name, presence:true
end
