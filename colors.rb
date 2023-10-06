class ClassName

    def initialize(colors)
        colors = ["blue","green", "yellow", "red"]
        @color = colors
    end

    def random_colors
        random = @color.sample(4)

        puts " puts random result : #{random}"
    end

end