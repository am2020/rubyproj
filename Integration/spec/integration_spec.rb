require 'spec_helper'
require '/Api/api'

include Api

describe('Restful-notes') do

  it('/notes should return a 200') do
    response = Api.All_notes

    expect(response.code).to be(200)
  end

  it('/notes/{id} should return a 200') do
    response = Api.specific_notes(1, :xml)

    expect(response.code).to be(200)
  end

  it('/notes/{id} should return a 418 when sent a bad accept header') do
    response = Api.specific_notes(1, :text)

    expect(response.code).to be(418)
  end

end