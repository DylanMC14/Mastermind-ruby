require 'colorize'

class Colors
    attr_accessor :color

    def initialize
        blue = "blue"
        green = "green"
        yellow = "yellow"
        red = "red"
        # puts red.colorize(:red) 

        colors = ["blue", "green", "yellow", "red"]
        @color = colors
    end

    def random_colors
        random = @color.sample(4)

        # puts " puts random result : #{random}"
    end

end

color_rd = Colors.new

puts "#{color_rd.random_colors}"