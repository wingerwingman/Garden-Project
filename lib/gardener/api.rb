class Api 

    # PERSONAL_ACCESS_TOKEN = ENV["2e7da5303df06d151a7aeb1d403aa7b2"]
    # ACCOUNT_ID = ENV["justinwinger4@gmail.com"]
    # "http://harvesthelper.herokuapp.com/api/v1/plants?api_key=2e7da5303df06d151a7aeb1d403aa7b2"


    def self.get_plants(plants) 
        url = "http://harvesthelper.herokuapp.com/api/v1/plants?api_key=2e7da5303df06d151a7aeb1d403aa7b2"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        plants_object = JSON.parse(response.body)
        plants_object.collect do |plants|
            plants["name"] 
        end
    end

    def self.get_information(info)
        url = "http://harvesthelper.herokuapp.com/api/v1/plants?api_key=2e7da5303df06d151a7aeb1d403aa7b2"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        plants_object = JSON.parse(response.body)
        plants_object.collect do |plants|
            plants["name"] 
            plants["description"]
            plants["optimal_sun"]
            plants["optimal_soil"]
            plants["planting_considerations"]
            plants["when_to_plant"]
            plants["growing_from_seed"]
            plants["transplanting"]
            plants["spacing"]
            plants["watering"]
            plants["feeding"]
            plants["other_care"]
            plants["diseases"]
            plants["pests"]
            plants["harvesting"]
            plants["storage_use"]
            # plants["image_url"]
        end

        
    end
end