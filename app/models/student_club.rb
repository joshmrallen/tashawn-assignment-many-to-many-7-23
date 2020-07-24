class StudentClub < ActiveRecord::Base
  belongs_to :student
  belongs_to :club
end