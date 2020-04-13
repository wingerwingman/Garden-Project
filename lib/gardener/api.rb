class Api 

    URL = "http://harvesthelper.herokuapp.com/api/v1/plants?api_key=2e7da5303df06d151a7aeb1d403aa7b2"
    def self.get_plants(plants) 
        binding.pry
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end
end