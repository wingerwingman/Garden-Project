class Api 

    # PERSONAL_ACCESS_TOKEN = ENV["2e7da5303df06d151a7aeb1d403aa7b2"]
    # ACCOUNT_ID = ENV["justinwinger4@gmail.com"]
    # "http://harvesthelper.herokuapp.com/api/v1/plants?api_key=2e7da5303df06d151a7aeb1d403aa7b2"


    def self.get_plants
        url = "http://harvesthelper.herokuapp.com/api/v1/plants?api_key=2e7da5303df06d151a7aeb1d403aa7b2"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        plants_object = JSON.parse(response.body)
        plants_object.each do |p|
            Plant.new(p["name"])
        end
        # binding.pry
    end

    def self.get_information(plant)
        url = "http://harvesthelper.herokuapp.com/api/v1/plants?api_key=2e7da5303df06d151a7aeb1d403aa7b2"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        plants_objects = JSON.parse(response.body)
        # binding.pry
        Plant.all[plant].description = plants_objects[plant]["description"]
    end

    def self.get_instructions(plant)
        url = "http://harvesthelper.herokuapp.com/api/v1/plants?api_key=2e7da5303df06d151a7aeb1d403aa7b2"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        plants_objects = JSON.parse(response.body)
        Plant.all[plant].instructions = plants_objects[plant]["optimal_sun"] + plants_objects[plant]["optimal_soil"] + plants_objects[plant]["planting_considerations"] + plants_objects[plant]["when_to_plant"] + plants_objects[plant]["growing_from_seed"] + plants_objects[plant]["transplanting"] + plants_objects[plant]["spacing"] + plants_objects[plant]["watering"] + plants_objects[plant]["feeding"] + plants_objects[plant]["other_care"] + plants_objects[plant]["diseases"] + plants_objects[plant]["harvesting"] + plants_objects[plant]["storage_use"]
    end

end

# puts plants_objects[plant]["name"] + "\n" + "Description:\n" + plants_objects[plant]["description"] + "Information: " + plants_objects[plant]["optimal_sun"] + plants_objects[plant]["optimal_soil"] + plants_objects[plant]["planting_considerations"] + plants_objects[plant]["when_to_plant"] + plants_objects[plant]["growing_from_seed"] + plants_objects[plant]["transplanting"] + plants_objects[plant]["spacing"] + plants_objects[plant]["watering"] + plants_objects[plant]["feeding"] + plants_objects[plant]["other_care"] + plants_objects[plant]["diseases"] + plants_objects[plant]["harvesting"] + plants_objects[plant]["storage_use"]