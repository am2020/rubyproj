require 'rest-client'

module FirstNote

def first_note
    begin
      return RestClient.get 'http://localhost:4567/notes1'
    rescue => e
      return e.response
    end
  end

end