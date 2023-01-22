require 'gosu'

require_relative 'entity.rb'
require_relative 'components/sprite.rb'
require_relative 'components/position.rb'
require_relative 'components/velocity.rb'
require_relative 'systems/renderer.rb'
require_relative 'systems/physics.rb'
require_relative 'systems/spawner.rb'
require_relative 'assemblages/movers.rb'

SCREEN_WIDTH = 640
SCREEN_HEIGHT = 360

class Game < Gosu::Window
    def initialize
        super SCREEN_WIDTH, SCREEN_HEIGHT
        self.caption = "DOD Example"
        @entities = []
        @systems = [
            Renderer.new,
            Physics.new,
            Spawner.new(@entities)
        ]
        @font = Gosu::Font.new(20)
    end

    def update
        @systems.each do |s|
            s.update(@entities) if s.class.method_defined?(:update)
        end
    end

    def draw
        @font.draw_text("FPS: #{Gosu.fps}", 10, 10, 99, 1.0, 1.0, Gosu::Color::WHITE)
        @font.draw_text("Entities: #{@entities.length}", 500, 10, 99, 1.0, 1.0, Gosu::Color::WHITE)
        @systems.each do |s|
            if s.class.method_defined?(:draw)
                s.draw(@entities)
            end
        end
    end
end

$game_window = Game.new

$game_window.show