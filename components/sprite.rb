class Sprite 
    attr_reader :symbol
    attr_reader :img
    def initialize(img)
        @symbol = :sprite 
        @img = Gosu::Image.new(img)
    end
end