Student.delete_all
Teacher.delete_all



Teacher.create(last_name: "Dilks", grade_level: "1st", years_of_experience: 20)
Teacher.create(last_name: "Legg", grade_level: "1st", years_of_experience: 30)
Teacher.create(last_name: "Widelitz", grade_level: "2nd", years_of_experience: 15)
Teacher.create(last_name: "Alvarez", grade_level: "3rd", years_of_experience: 25)
Teacher.create(last_name: "Cohen", grade_level: "4th", years_of_experience: 10)
Teacher.create(last_name: "Wang", grade_level: "5th", years_of_experience: 10)



Student.create(first_name: "Dorothy", last_name: "Meyers", grade_level: "1st")
Student.create(first_name: "Toto", last_name: "Yellow", grade_level: "1st")
Student.create(first_name: "Crackle", last_name: "Kringle", grade_level: "1st")

Student.create(first_name: "Alex", last_name: "Silverstein", grade_level: "2nd")
Student.create(first_name: "Alex", last_name: "Mac", grade_level: "2nd")
Student.create(first_name: "Amory", last_name: "Dodgers", grade_level: "2nd")

Student.create(first_name: "Lisa", last_name: "Chilenpath", grade_level: "3rd")
Student.create(first_name: "Lisa", last_name: "Chilenpath", grade_level: "3rd")

Student.create(first_name: "Terresa", last_name: "Borentini", grade_level: "4th")
Student.create(first_name: "Tim", last_name: "Mick", grade_level: "4th")

Student.create(first_name: "Samantha", last_name: "Yu", grade_level: "5th")
Student.create(first_name: "Courageous", last_name: "Quixotl", grade_level: "5th")
Student.create(first_name: "Stupendous", last_name: "Quixotl", grade_level: "5th")
Student.create(first_name: "Lothlorien", last_name: "Samwise", grade_level: "5th")



Student.all.each do |student|
    case student.grade_level
    when "1st"
        Teacher.all.where(grade_level: "1st").each do |teacher|
            student.teachers << teacher
        end
    when "2nd"
        Teacher.all.where(grade_level: "2nd").each do |teacher|
            student.teachers << teacher
        end
    when "3rd"
        Teacher.all.where(grade_level: "3rd").each do |teacher|
            student.teachers << teacher
        end
    when "4th"
        Teacher.all.where(grade_level: "4th").each do |teacher|
            student.teachers << teacher
        end
    when "5th"
        Teacher.all.where(grade_level: "5th").each do |teacher|
            student.teachers << teacher
        end
    else
        "Invalid Grade"
    end
end
