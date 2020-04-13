class Cli
    attr_accessor :plants, :number

    def run
    #   binding.pry
      puts " "
      puts "Welcome to the plant information program"
      puts " "
      puts "Type list for a list of plants, or plant number"
      puts " "
      input = gets.strip.downcase.capitalize
      prompt
    #   binding.pry
      while input != 'Exit'
      if input == "List"
        plants_name(plants)
      elsif input.to_i == Plant.find_by_name(@number).length
        puts Api.get_information(@plants)

      else 
        puts " "
        puts "I do not understand - trya again"
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