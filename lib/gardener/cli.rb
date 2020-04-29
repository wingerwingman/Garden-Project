class Cli

    def run
      Api.get_plants
      puts " "
      puts "Welcome to the plant information program, where you can get information on the most commonly grown garden plants and instructions on how to grow them."
      puts " "
      puts "Type list for a list of plants, or the plant number."
      puts " "
      input = gets.strip.downcase
      prompt
      plants_loop(input)
    puts " "
    puts "Good bye!"
    puts " "
    
end

def plants_loop(input)
  while input != 'exit'
    if input == "list"
      plants_name
    elsif input.to_i > 0 && input.to_i <= Plant.all.length
      number = input.to_i - 1
      plant = Plant.all[number]
      # puts plant.name + ":\n" 
      Api.get_information(number) if !plant.description
      puts plant.name_and_description
      # puts plant.description
      instructions_loop(plant, number)
    else
      puts "-------------------------------"
      puts "I do not understand - try again!"
      puts "-------------------------------"
    end
    prompt
    input = gets.strip.downcase
    end
end

def instructions_loop(plant, number)
  prompt2
      input = gets.strip.downcase
      while input != "end"
          if input == "instructions"
              Api.get_instructions(number) if !plant.instructions
              puts plant.instructions
          else
              puts "-------------------------------"
              puts "I do not understand - try again!"
              puts "-------------------------------"
          end
          prompt2
          input = gets.strip.downcase
      end
  end

def plants_name
    puts " "
    Plant.all.each.with_index(1) do |p, index|
    puts "#{index} #{p.name}"
    puts " "
    end
end

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


