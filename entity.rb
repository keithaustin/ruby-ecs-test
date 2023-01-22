class Entity
    attr_reader :components
    def initialize
        @components = {}
    end
    def has?(symbol)
        return true if @components.has_key?(symbol)
        false
    end
    def get(symbol)
        @components[symbol]
    end
    def add(component)
        @components[component.symbol] = component
    end
end