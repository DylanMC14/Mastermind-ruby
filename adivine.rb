require_relative 'colors'

 

class Adivine
    attr_accessor :color

    i = 0
    def initialize
        @colors = Colors.new
    end

    def position
        
        for i in i..@colors do
            puts @colors.random_colors
        end

    end

end

adivine = Adivine.new
puts "#{adivine.position}"
