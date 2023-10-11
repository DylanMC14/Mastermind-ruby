require 'colorize'

class Table
    attr_accessor :table_board

    def initialize
        @table_board = Array.new(12)
    end

    def table_board()
        puts "_____________________".colorize(:magenta)
        @table_board.each_with_index {
            |guess, index| puts " | ".colorize(:magenta) + " ---- " + " | ".colorize(:magenta) + " .... " + " | ".colorize(:magenta)
        }
        puts "_____________________\n".colorize(:magenta)
    end

    def welcome
        puts "************** M A S T E R M I N D **************\n".colorize(:red)
        puts "Bienvenido al juego Mastermind\n".colorize(:blue)
        puts "El juego consiste en adivinar una serie de codigo de colores en 12 turnos aproximadamente".colorize(:blue)
        puts "____________________________________________________\n".colorize(:green)
        puts "La computadora seleccionara un codigo especifico de 4 colores al azar que deberás \n adivinar en 12 turnos exactos o menos".colorize(:blue)  
        puts "_________________________________________________________".colorize(:green) 
        puts "\n Se mostrará al lado izquierdo una retroalimentacion del codigo dado".colorize(:blue)
        puts "Asterisco significa que algun color esta en un posición correcta".colorize(:blue)
        puts "Puntito  es que el color existe pero no en la posicion correcta".colorize(:blue)
        puts "\n BUENA SUERTE EN TU JUEGO!\n".colorize(:yellow)
        puts "****************************************************************".colorize(:red)
    end

    def computer
        blue = "blue"
        green = "green"
        yellow = "yellow"
        red = "red"

        colors = ["blue", "green", "yellow", "red"]
        
        random = colors.sample(4)
    end

end

