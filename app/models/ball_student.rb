class BallStudent < ActiveRecord::Base
    belongs_to :ball
    belongs_to :student
    
end