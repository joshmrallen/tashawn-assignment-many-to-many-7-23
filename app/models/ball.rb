class Ball < ActiveRecord::Base
    has_many :ball_students
    has_many :students, through: :ball_students
    after_initialize :init

    def init
        self.inflated ||= true
    end

    def self.random_ball_type
        r = Random.new
        index = r.rand(0...5)
        types = ["golf ball", "basketball", "ping-pong", "football", "tennis ball"]
        types[index]
    end

    def deflate
        self.inflated = false
    end

    def self.inflate_all
        self.all.each do |ball|
            ball.inflated = true
        end
    end

    def self.create_10_balls
        10.times {
            self.create(ball_type: self.random_ball_type)
        }
    end

end