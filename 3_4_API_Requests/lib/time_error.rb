require 'date'
require 'json'

class TimeError
    # Returns difference in seconds between server time
    # and the time on this computer
    def initialize(req)
        @req = req
    end

    def error(time)
        return get_server_time - time
    end
    
    private
    
    def get_server_time
        text_response = @req.get(URI("https://worldtimeapi.org/api/ip"))
        json = JSON.parse(text_response)
        return DateTime.parse(json["utc_datetime"]).to_time
    end
end

# usage:
# require 'net/http'
# te = TimeError.new(Net::HTTP) #gives an error, but works on curl
# puts te.error(Time.now)