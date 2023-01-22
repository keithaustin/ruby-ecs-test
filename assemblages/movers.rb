module Assemblages

    def self.moves_left(x, y, speed)
        entity = Entity.new
        entity.add Sprite.new("assets/frame1.png")
        entity.add Position.new(x, y)
        entity.add Velocity.new(-speed, 0)
        return entity
    end

    def self.moves_right(x, y, speed)
        entity = Entity.new
        entity.add Sprite.new("assets/frame1.png")
        entity.add Position.new(x, y)
        entity.add Velocity.new(speed, 0)
        return entity
    end
    
    def self.moves_up(x, y, speed)
        entity = Entity.new
        entity.add Sprite.new("assets/frame1.png")
        entity.add Position.new(x, y)
        entity.add Velocity.new(0, -speed)
        return entity
    end

    def self.moves_down(x, y, speed)
        entity = Entity.new
        entity.add Sprite.new("assets/frame1.png")
        entity.add Position.new(x, y)
        entity.add Velocity.new(0, speed)
        return entity
    end

end