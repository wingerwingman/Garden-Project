class Cli
    attr_accessor :plants, :number

    def run
      puts " "
      puts "Welcome to the plant information program"
      puts " "
      puts "Type list for a list of plants, or plant number"
      puts " "
      input = gets.strip.downcase.capitalize
      prompt
      while input != 'Exit'
      if input == "List"
        plants_name(plants)
        # binding.pry
      elsif input.to_i > 0 && input.to_i <= Plant.find_by_name(input)
        @number = input.to_i
        plant
        # Api.get_information(input - 1)

      else 
        puts " "
        puts "I do not understand - try again"
        puts " "
      end
      prompt
      input = gets.strip.downcase.capitalize
      end
    puts " "
    puts "Good bye"
end

def plants_name(plants)
    puts " "
    puts "Here all the plants you can choose from."
    puts " " 
    Api.get_plants(@plants)

end

   def prompt 
    puts " "
    puts "Select a plant name to list the plants information, or type list to get a list of the plants."
    puts " "
   end

end