class Student < ActiveRecord::Base
    has_many :grade_levels
    has_many :teachers, through: :grade_levels
    has_many :student_clubs
    has_many :clubs, through: :student_clubs
    has_many :ball_students
    has_many :balls, through: :ball_students

    def full_name
        self.first_name + " " + self.last_name
    end

    def self.all_in_grade(grade)
        GradeLevel.all.map do |gl|
            Student.all.select {|student| student.id == gl.student_id}
        end.flatten
    end

    def self.random_grade_assignment
        self.all.each do |student|
            grade = rand(1..12)
            student.enter_grade(grade)
        end
    end

    def enter_grade(grade_as_number)
        teacher = Teacher.all.sample
        GradeLevel.create(grade: grade_as_number, student_id: self.id, teacher_id: teacher.id)
    end

    def all_club_names
    #return all the clubs' name in an array which the student belongs to
        clubs.map(&:name)
    end

    def all_locations
    #return all the locations in an array where the student go to join the clubs
        clubs.map(&:location)
    end

    def club_friends
    #return all the friends the student have through the clubs. Remove duplication.
        members = clubs.each_with_object([]) { |club, member| 
            member << club.students
        }
        members.delete(self)
        members.flatten.uniq
    end

    def take_random_ball
        # takes a random unassigned ball and adds it to the student's balls array
        unassigned = BallStudents.all.select {|b| b.student_id == nil}
        ballid = unassigned.sample.ball_id
        ball = Ball.find(ballid)
        self.balls << ball
    end

    def choose_ball(kind)
        # search existing balls for the type specified that doesn't belong to a student yet
        # if none exist, then create a new one and add it to the student's balls array 
        ball = Ball.find_by(ball_type: kind)
        if ball && BallStudents.find_by(ball_id: ball.id).student_id == nil
            self.balls << ball
        else
            ball = Ball.create(ball_type: kind)
            self.balls << ball
        end
    end

    def pass_ball(kind, student_first_name)
        # find an existing ball in the student's balls array and add it to the specified student friend's balls array
        # if the calling student doesn't own a ball like the specified one yet, create one
        # end result should be two students with the same ball
        
        ball = self.balls.find_by(ball_type: kind)
        receiver = Student.all.find_by(first_name: student_first_name).balls
        
        if ball
            receiver << ball
        else
            ball = Ball.create(ball_type: kind)
            self.balls << ball
            receiver << ball
        end
    end

    def teachers_pet
        Ball.inflate_all
        "#{self.first_name} just inflated all the balls and earned some brownie points with the PE Teacher."
    end

    def self.grade_game(grade_level, ball_type)
        # creates a brand new ball to use in a grade-wide game using said new ball
        ball = Ball.create(ball_type: ball_type)
        self.all_in_grade(grade_level).each {|student| student.balls << ball }
    end



end