class Cli

    def run
      Api.get_plants
    
      puts " "
      puts "Welcome to the plant information program"
      puts " "
      puts "Type list for a list of plants, or plant number"
      puts " "
      input = gets.strip.downcase
      prompt
      while input != 'exit'
      if input == "list"
        plants_name(Plant)
      elsif input.to_i > 0 && input.to_i <= 45
        number = input.to_i - 1
        plant = Plant.all[number]
        puts Plant.all[number].name + ":\n" + Api.get_information(number)
        prompt2
        input = gets.strip.downcase
          while input != "end"
            if input == "instructions"
            puts Api.get_instructions(number)
            prompt2
            input = gets.strip.downcase
            elsif 
              puts " "
              puts "I do not understand - try again"
              puts " "
            else
              puts " "
              puts "I do not understand - try again"
              puts " "
              input = gets.strip.downcase
            end
        end
      else 
        puts " "
        puts "I do not understand - try again"
        puts " "
      end
      prompt
      input = gets.strip.downcase
      end
    puts " "
    puts "Good bye"
end

def plants_name(plants)
    puts " "
    puts "Here all the plants you can choose from." 
    # binding.pry
    Plant.all.each.with_index(1) do |p, index|
     puts "#{index} #{p.name}"
    end

end

# def print_plant(number)

# end

def prompt 
    puts " "
    puts "Select a plant name to list the plants information, or type list to get a list of the plants."
    puts " "
end

def prompt2
    puts " "
    puts "Type end to leave this plant or type instructions to view gardening instructions."
    puts " "
end



end


