# class Description
#     attr_accessor :descriptions
#     @@all = []
    
#     def initialize(descriptions)
#       @descriptions = descriptions
#       @@all << self
#     end
  
#     def self.all 
#       @@all
#     end
  
#     def self.find_by_name(number)
#       @@all.find {|n| n.name == name}
#       # binding.pry
#     end
#   end