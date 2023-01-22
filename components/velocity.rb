class Velocity
    attr_reader :symbol
    attr_accessor :x
    attr_accessor :y
    def initialize(x, y)
        @symbol = :vel
        @x = x
        @y = y
    end
end