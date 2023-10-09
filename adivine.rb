require_relative 'colors'

 

class Adivine
    attr_accessor :color

    i = 0
    def initialize
        @color = Colors.new
    end

    def position
        colors_randoms = @color.random_colors

        colors_randoms.each_with_index do |dato,index|
        puts "#{dato} :: #{index}"
        end

    end

end

adivine = Adivine.new
puts "#{adivine.position}"
