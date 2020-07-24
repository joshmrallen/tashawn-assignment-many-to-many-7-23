class Student < ActiveRecord::Base
    has_many :grade_levels
    has_many :teachers, through: :grade_levels

    def full_name
        self.first_name + " " + self.last_name
    end

    def self.all_in_grade(grade)
        self.where(grade_level: grade)
    end

    def all_club_names
    #return all the clubs' name in an array which the student belongs to
    end

    def all_locations
    #return all the locations in an array where the student go to join the clubs
    end

    def club_friends
    #return all the friends the student have through the clubs. Remove duplication.
    end
end