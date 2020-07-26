class Teacher < ActiveRecord::Base
    has_many :grade_levels
    has_many :students, through: :grade_levels

    def tenure
        self.years_of_experience > 5
    end

    def self.grade_assignment
        # assumes a GradeLevel.create_grades is defined to populate the GradeLevel table with grades 1 through 12
        # assigns later grades to teachers with more years of experience
        GradeLevel.all.each do |grade|
            if grade.grade == "10th" || grade.grade == "11th" || grade.grade == "12th"
                self.all.each do |teacher|
                    if teacher.years_of_experience > 10
                        grade.teachers << teacher
                    end
                end
            else
                self.all.each do |teacher|
                    if teacher.years_of_experience <= 10
                        grade.teachers << teacher
                    end
                end
            end
        end
    end

end