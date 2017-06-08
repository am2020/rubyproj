require 'rest-client'

module Note2

def second_note
    begin
      return RestClient.get 'http://localhost:4567/notes2'
    rescue => e
      return e.response
    end
  end

end