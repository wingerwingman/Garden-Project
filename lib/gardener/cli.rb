class Cli
    attr_accessor :plants 

    def run

      puts " "
      puts "Welcome to the plant information program"
      puts " "
      puts "Type list for a list of plants."
      puts " "
      input = gets.strip.downcase.capitalize
      prompt
      while input != 'Exit'
      if input == "List"
        plants_name(plants)
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
    puts Api.get_plants(@plants)

   end

   def prompt 
    puts " "
    puts "Select a plant name to list the plants information, or type list to get a list of the plants."
    puts " "
   end

end