require 'rack'
class Application
    #assign new rack response to variable
    #if time.now > 12
        #.write "Good Morning"
    #else
        #.write "Good Afternoon"
    #end
    #var.finish
    def call(env)
        rack_response = Rack::Response.new
        if Time.now.hour < 12
            rack_response.write "Good Morning!"
        else
            rack_response.write "Good Afternoon!"
        end
        rack_response.finish
    end
end