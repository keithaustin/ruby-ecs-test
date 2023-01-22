class Position
    attr_reader :symbol
    attr_accessor :x
    attr_accessor :y
    def initialize(x, y)
        @symbol = :pos 
        @x = x
        @y = y
    end
end