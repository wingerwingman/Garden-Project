class Plant
  attr_accessor :name, :number
  @@all = []
  
  def initialize(name, number)
    @number = number
    # Api.get_information(number -1)
    Api.get_plants(plants)
    @@all << self
  end

  def self.all 
    @@all
  end

  def self.find_by_name(number)
    @@all.find {|n| n.name == name}
  end


end