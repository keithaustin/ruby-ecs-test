class Spawner
    def initialize(entities)
        for i in 1..5000
            entities.push(Assemblages::moves_left(600, rand(1..300), 1))
            entities.push(Assemblages::moves_right(0, rand(1..300), 1))
            entities.push(Assemblages::moves_up(rand(1..600), 300, 1))
            entities.push(Assemblages::moves_down(rand(1..600), 0, 1))
        end
    end
    def update(entities)
        
    end
    def draw(entities)
    end
end