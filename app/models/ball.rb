class Ball < ActiveRecord::Base
    has_many :ball_students
    has_many :students, through: :ball_students
    after_initialize :init

    def init
        self.random_ball_assignment
        self.inflated ||= true
    end

    def random_ball_assignment
        r = Random.new
        index = r.rand(0...5)
        types = ["golf ball", "basketball", "ping-pong", "football", "tennis ball"]
        self.ball_type = types[index]
    end

end