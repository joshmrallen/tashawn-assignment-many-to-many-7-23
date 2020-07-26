# Student.delete_all
# Teacher.delete_all

Student.delete_all
Teacher.delete_all
GradeLevel.delete_all
StudentClub.delete_all
Ball.delete_all
BallStudent.delete_all

Student.create(first_name: "first1", last_name: "last1")
Student.create(first_name: "first2", last_name: "last2")
Student.create(first_name: "first3", last_name: "last3")
Student.create(first_name: "first4", last_name: "last4")

Teacher.create(last_name: "last5", years_of_experience: 3)
Teacher.create(last_name: "last6", years_of_experience: 5)
Teacher.create(last_name: "last7", years_of_experience: 7)
Teacher.create(last_name: "last8", years_of_experience: 9)

# GradeLevel.create(grade: 1, student_id: 1, teacher_id: 1)
# GradeLevel.create(grade: 2, student_id: 2, teacher_id: 2)
# GradeLevel.create(grade: 3, student_id: 3, teacher_id: 3)
# GradeLevel.create(grade: 4, student_id: 4, teacher_id: 4)

Club.create(name: "clubname1", activity: "activity1", location: "location1")
Club.create(name: "clubname2", activity: "activity2", location: "location2")
Club.create(name: "clubname3", activity: "activity3", location: "location3")
Club.create(name: "clubname4", activity: "activity4", location: "location4")

StudentClub.create(student_id: 1, club_id: 1)
StudentClub.create(student_id: 2, club_id: 2)
StudentClub.create(student_id: 3, club_id: 3)
StudentClub.create(student_id: 4, club_id: 4)
StudentClub.create(student_id: 1, club_id: 4)
StudentClub.create(student_id: 2, club_id: 3)
StudentClub.create(student_id: 3, club_id: 2)
StudentClub.create(student_id: 4, club_id: 1)

# Teacher.create(last_name: "Dilks", grade_level: "1st", years_of_experience: 20)
# Teacher.create(last_name: "Legg", grade_level: "1st", years_of_experience: 30)
# Teacher.create(last_name: "Widelitz", grade_level: "2nd", years_of_experience: 15)
# Teacher.create(last_name: "Alvarez", grade_level: "3rd", years_of_experience: 25)
# Teacher.create(last_name: "Cohen", grade_level: "4th", years_of_experience: 10)
# Teacher.create(last_name: "Wang", grade_level: "5th", years_of_experience: 10)



# Student.create(first_name: "Dorothy", last_name: "Meyers", grade_level: "1st")
# Student.create(first_name: "Toto", last_name: "Yellow", grade_level: "1st")
# Student.create(first_name: "Crackle", last_name: "Kringle", grade_level: "1st")

# Student.create(first_name: "Alex", last_name: "Silverstein", grade_level: "2nd")
# Student.create(first_name: "Alex", last_name: "Mac", grade_level: "2nd")
# Student.create(first_name: "Amory", last_name: "Dodgers", grade_level: "2nd")

# Student.create(first_name: "Lisa", last_name: "Chilenpath", grade_level: "3rd")
# Student.create(first_name: "Lisa", last_name: "Chilenpath", grade_level: "3rd")

# Student.create(first_name: "Terresa", last_name: "Borentini", grade_level: "4th")
# Student.create(first_name: "Tim", last_name: "Mick", grade_level: "4th")

# Student.create(first_name: "Samantha", last_name: "Yu", grade_level: "5th")
# Student.create(first_name: "Courageous", last_name: "Quixotl", grade_level: "5th")
# Student.create(first_name: "Stupendous", last_name: "Quixotl", grade_level: "5th")
# Student.create(first_name: "Lothlorien", last_name: "Samwise", grade_level: "5th")



# Student.all.each do |student|
#     case student.grade_level
#     when "1st"
#         Teacher.all.where(grade_level: "1st").each do |teacher|
#             student.teachers << teacher
#         end
#     when "2nd"
#         Teacher.all.where(grade_level: "2nd").each do |teacher|
#             student.teachers << teacher
#         end
#     when "3rd"
#         Teacher.all.where(grade_level: "3rd").each do |teacher|
#             student.teachers << teacher
#         end
#     when "4th"
#         Teacher.all.where(grade_level: "4th").each do |teacher|
#             student.teachers << teacher
#         end
#     when "5th"
#         Teacher.all.where(grade_level: "5th").each do |teacher|
#             student.teachers << teacher
#         end
#     else
#         "Invalid Grade"
#     end
# end
