class GradeLevel < ActiveRecord::Base
    belongs_to :student
    belongs_to :teacher

    def self.create_grades
        index = 1
        total_grades = 12
        while index <= 12
            self.create(grade: index)
            index += 1
        end
        self.all
    end

end