require 'open-uri'
require 'json'
require 'net/http'
require 'pry'

class GetRequester
    attr_accessor :uri
    # url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

    def initialize(url)
        @uri = URI.parse(url)
    end

    def get_response_body
        response = Net::HTTP.get_response(self.uri)
        response.body
    end

    def parse_json
       
        information = JSON.parse(self.get_response_body)
        
        information
            
        
  end
end 

