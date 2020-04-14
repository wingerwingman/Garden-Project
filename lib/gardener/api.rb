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
            plant.description = plants_objects[number]["description"]
            plant.information = plants_objects[number]["optimal_sun"] + plants_objects[number]["optimal_soil"] + plants_objects[number]["planting_considerations"] + plants_objects[number]["when_to_plant"] + plants_objects[number]["growing_from_seed"] + plants_objects[number]["transplanting"] + plants_objects[number]["spacing"] + plants_objects[number]["watering"] + plants_objects[number]["feeding"] + plants_objects[number]["other_care"] + plants_objects[number]["diseases"] + plants_objects[number]["harvesting"] + plants_objects[number]["storage_use"]
  
    end
end

# puts plants_objects[number]["name"] + "\n" + "Description:\n" + plants_objects[number]["description"] + "Information: " + plants_objects[number]["optimal_sun"] + plants_objects[number]["optimal_soil"] + plants_objects[number]["planting_considerations"] + plants_objects[number]["when_to_plant"] + plants_objects[number]["growing_from_seed"] + plants_objects[number]["transplanting"] + plants_objects[number]["spacing"] + plants_objects[number]["watering"] + plants_objects[number]["feeding"] + plants_objects[number]["other_care"] + plants_objects[number]["diseases"] + plants_objects[number]["harvesting"] + plants_objects[number]["storage_use"]