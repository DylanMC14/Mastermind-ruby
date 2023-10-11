require 'colorize'
require_relative 'table'


class Game
    attr_accessor :color, :adivine, :turn, :array_adivine, :correct, :computer

    def initialize
        puts "Array de colores disponibles(no estan en orden)".colorize(:yellow)
        require_relative 'adivine'
        puts "\n"
        @adivine = Adivine.new
        @color = Colors.new
        @turn = 12
        @array_adivine = []
        @correct = 0
        @computer = Table.new
    end

    def validation
        adivine = @adivine.position
        puts "\n"
        puts "Colocar color\n"
        puts "-->"
        array_points = ["·", "·", "·", "·"]
        array_pos_one = []
        asterisk = "*"

        @array_adivine = @color.random_colors

        loop do

            array_points.each_with_index do |dato,index|
                txt_adivine = gets.chomp

                # puts "#{dato} :: #{index}"

                case txt_adivine
                when index == 0 && adivine[0]
                    array_pos_one.insert(index, array_points[0].colorize(:green))
                    @correct += 1
                    next
                when index == 1 && adivine[1]
                    array_pos_one.insert(index, array_points[1].colorize(:green))
                    @correct += 1
                    next
                when index == 2 && adivine[2]
                    array_pos_one.insert(index, array_points[2].colorize(:green))
                    @correct += 1
                    next
                when index == 3 && adivine[3]
                    array_pos_one.insert(index, array_points[3].colorize(:green))
                    @correct += 1
                    next
                else
                    array_pos_one.insert(index, "*".colorize(:red))
                    @correct -= 1
                end

                # if index == 0 && adivine[0]

                #     if adivine[0].include?(txt_adivine)
                #         array_pos_one.insert(index, array_points[0].colorize(:green))
                #         @correct += 1
                #         # elsif !adivine[0].include?(txt_adivine)
                #         #     array_pos_one.insert(index, array_points[0].colorize(:red))
                #     else
                #         array_pos_one.insert(index, array_points[0].colorize(:blue))
                #         @correct -= 1
                #     end
                #     next

                # elsif index == 1 && adivine[1]
      
                #     if adivine[1].include?(txt_adivine)
                #         array_pos_one.insert(index, array_points[1].colorize(:green))
                #         @correct += 1
                #     else
                #         array_pos_one.insert(index, array_points[1].colorize(:blue))
                #         @correct -= 1
                #     end
                #     next

                # elsif index == 2 && adivine[2]
              
                #     if adivine[2].include?(txt_adivine)
                #         array_pos_one.insert(index, array_points[2].colorize(:green)) 
                #         @correct += 1
                #     else
                #         array_pos_one.insert(index, array_points[2].colorize(:blue))
                #         @correct -= 1
                #     end
                #     next

                # elsif index == 3 && adivine[3]
         
                #     if adivine[3].include?(txt_adivine)
                #         array_pos_one.insert(index, array_points[3].colorize(:green))
                #         @correct += 1
                #     else
                #         array_pos_one.insert(index, array_points[3].colorize(:blue))
                #         @correct -= 1
                #     end
                #     next

                # elsif index == 0 && adivine[0] || index == 1 && adivine[1] || index == 2 && adivine[2] || index == 3 && adivine[3]
                #     array_pos_one.insert(index, asterisk.colorize(:red))
                # end

                if index == 4
                    break
                end
            end
            @turn -= 1

            if array_pos_one.length >= 5
                array_pos_one.shift(4)
            end
            if @correct < 4 
                array_join = array_pos_one.shuffle.join(" ")
                puts array_join
            end

            computer_ = @computer

            if @correct == 4 || computer_.computer == @array_adivine
                puts "- - - - - - - - - - - - - - - - - - - - - - - - -".colorize(:yellow)
                puts "Has ganado el juego, haz vencido a la computadora".colorize(:cyan)
                puts "- - - - - - - - - - - - - - - - - - - - - - - - -".colorize(:yellow)
                array_join_win = "· · · ·"
                puts array_join_win. colorize(:green)
                break
            elsif @turn == 0
                puts "Se acabaron los turnos, Haz Perdido" 
                break
            end
            puts "Te quedan estos intentos :: #{@turn}"
        end
    end
end

puts "Elija el tipo de juego (jugador) o (computadora)\n".colorize(:red)
puts "Al escoger jugador, seras quien deba adivinar el codigo de colores".colorize(:yellow)
puts "Al escoger computadora, sera la computadora quien deba adivinar el codigo de colores\n".colorize(:yellow)
election = gets.chomp

case election
when "jugador"

    table_ = Table.new
    table_.table_board
    game_ = Game.new
    puts "#{game_.validation}"

when "computadora"

    table_cpu = Table.new
    table_cpu.table_board
    game_cpu = Game.new
    game_cpu.validation
        computer = table_cpu.computer
    

else

    puts "Modo de juego no valido"

end




