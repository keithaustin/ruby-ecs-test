class Renderer
    def initialize
    end
    def draw(entities)
        entities.each do |e|
            if e.has?(:sprite) && e.has?(:pos)
                x = e.get(:pos).x
                y = e.get(:pos).y
                e.get(:sprite).img.draw(x, y, 0)
            end
        end
    end
end