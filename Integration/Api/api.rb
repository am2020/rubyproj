# Gem needed 
require 'rest-client'

# Generic api object
module Allnotes

  def all_notes
    begin
    	# Calls all endpoints in '/notes1' >> This has been made into an object, no need to tye full uri 
      return RestClient.get 'http://localhost:4567/notes'
    rescue => e
      return e.response
    end
  end

 def first_notes
    begin
    	# Calls all endpoints in '/notes1' >> This has been made into an object, no need to tye full uri 
      return RestClient.get '/notes1'
    rescue => e
      return e.response
    end
  end
  # Target a specific endpoints
  def specific_notes(id, accept)
    begin
    	# Calls a certain note depending on the number 
      return RestClient.get 'http://localhost:4567/notes/' + id.to_s, :accept => accept
    rescue => e
      return e.response
    end
  end

end