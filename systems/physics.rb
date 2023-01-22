class Physics
    def initialize
    end
    def update(entities)
        entities.each do |e|
            if e.has?(:vel) && e.has?(:pos)
                if e.get(:pos).x >= 0 && e.get(:pos).x <= 600
                    e.get(:pos).x += e.get(:vel).x
                end
                if e.get(:pos).y >= 0 && e.get(:pos).y <= 320
                    e.get(:pos).y += e.get(:vel).y
                end
            end
        end
    end
end