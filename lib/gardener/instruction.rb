class Instruction
    attr_accessor :instructions, :description
    @@all = []
    
    def initialize(instructions, description)
      @description = description
      @instructions = instructions
      @@all << self
    end
  
    def self.all 
      @@all
    end
  
    def self.find_by_name(number)
      @@all.find {|n| n.name == name}
      # binding.pry
    end
  end