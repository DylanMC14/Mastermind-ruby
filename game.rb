require_relative 'adivine'
require 'colorize'

class Game
    attr_accessor :color, :adivine

    def initialize
        @adivine = Adivine.new
    end

    def validation
        adivine = @adivine.position
       

        array_points = ["·", "·", "·", "·"]
        array_pos_one = []

        array_points.each_with_index do |dato,index|
            txt_adivine = gets.chomp
            # puts "#{dato} :: #{index}"
            case txt_adivine
            when index == 0 && adivine[0]
                array_pos_one.insert(index, array_points[0].colorize(:green))
                next
            when index == 1 && adivine[1]
                array_pos_one.insert(index, array_points[1].colorize(:green))
                next
            when index == 2 && adivine[2]
                array_pos_one.insert(index, array_points[2].colorize(:green))
                next
            when index == 3 && adivine[3]
                array_pos_one.insert(index, array_points[3].colorize(:green))
                next
            else
                array_pos_one.insert(index, "*".colorize(:red))
            end

            if index == 4
                break
            end
        end

        puts array_pos_one.shuffle.join(",")

    end
end

game_ = Game.new

puts "#{game_.validation}"