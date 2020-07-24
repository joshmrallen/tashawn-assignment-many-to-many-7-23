# Tashawn's Assignment 7/23

#### Create a new github repo, complete the following deliverables, send me the link to your repo when you're done. You DO NOT have to make me a collaborator
## Domain: Student-Teacher

### Students
- A Student has a first_name (string)
- A Student has a last_name (string)
- A Student has a grade_level (string), for ex: "first", "second", "third", etc...
- Student#full_name should return the first and last name of the student in one string, for ex: "Ian Grubb"
- Student#grade_level should return the student's grade level
- Student.all should return a list of all students
- Student.all_in_grade should receive an argument of a grade, ex: "first", and return all students who are in that grade

### Teachers
- A Teacher has a last_name (string)
- A Teacher has a grade_level (string)
- A Teacher has a years_of_experience (integer)
- Teacher#tenure should return true if a teacher has taught more than 5 years, otherwise false
You should have a completed seeds file for testing

# Answer the following questions:

- Which method(s) does Active Record create for you?
    - Student#first_name, Student#last_name, Student#grade_level, Student.all
- Which method(s) did you have to create yourself? Why? 
    - Student.all_in_grade because it required a condition to return a portion of the records, not all of them --Teacher#tenure because it requires that I specify a condition that gives me extra information about the record

# Extension -- Add these deliverables:
- ## A Student belongs to a Teacher

- ## Student#teacher should return the teacher that student belongs to

- ## Teacher#students should return a list of all the students that belong to this teacher

---
# Final Deliverables
## Make all necessary changes to satisfy these deliverables: 
- A Student has many Teachers through GradeLevel
- A Teacher has many Students through GradeLevel
You should have a complete seeds file 
Answer the following questions:
- What changes did you make to your app? Why?
    - add belongs_to for each model to GradeLevel
    - add has_many through to both student and teacher models
    - delete the foreign key from students
    - add the grade_levels table with foreign keys for students and teachers tables
    - update the seeds.rb file to associate multiple students to multiple teachers