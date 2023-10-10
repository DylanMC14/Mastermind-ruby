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
        asterisk = "*"

        array_points.each_with_index do |dato,index|
            txt_adivine = gets.chomp
            # puts "#{dato} :: #{index}"
            # case txt_adivine
            # when index == 0 && adivine[0]
            #     array_pos_one.insert(index, array_points[0].colorize(:green))  
            #     next
            # when index == 1 && adivine[1]
            #     array_pos_one.insert(index, array_points[1].colorize(:green))
            #     next
            # when index == 2 && adivine[2]
            #     array_pos_one.insert(index, array_points[2].colorize(:green))
            #     next
            # when index == 3 && adivine[3]
            #     array_pos_one.insert(index, array_points[3].colorize(:green))
            #     next
            # else
            #     array_pos_one.insert(index, "*".colorize(:red))
            # end

            if index == 0 && adivine[0]

                if adivine[0].include?(txt_adivine)
                    array_pos_one.insert(index, array_points[0].colorize(:green))
                elsif !adivine[0].include?(txt_adivine)
                    array_pos_one.insert(index, array_points[0].colorize(:red))
                else
                    array_pos_one.insert(index, array_points[0].colorize(:blue))
                end

                next

            elsif index == 1 && adivine[1]
      
                if adivine[1].include?(txt_adivine)
                    array_pos_one.insert(index, array_points[1].colorize(:green))
                else
                    array_pos_one.insert(index, array_points[1].colorize(:blue))
                end

                next

            elsif index == 2 && adivine[2]
              
              
                if adivine[2].include?(txt_adivine)
                    array_pos_one.insert(index, array_points[2].colorize(:green)) 
                else
                    array_pos_one.insert(index, array_points[2].colorize(:blue))
                end

                next

            elsif index == 3 && adivine[3]
         
                if adivine[3].include?(txt_adivine)
                    array_pos_one.insert(index, array_points[3].colorize(:green))
                else
                    array_pos_one.insert(index, array_points[3].colorize(:blue))
                end

                next

            elsif index == 0 && adivine[0] || index == 1 && adivine[1] || index == 2 && adivine[2] || index == 3 && adivine[3]
                array_pos_one.insert(index, asterisk.colorize(:red))
            end

            if index == 4
                break
            end
        end

        puts array_pos_one.shuffle.join(" ")

    end
end
require_relative 'table'
require_relative 'adivine'
table_ = Table.new
game_ = Game.new
# puts "#{table_.welcome}"
# puts "#{table_.table_board}"
puts "#{game_.validation}"