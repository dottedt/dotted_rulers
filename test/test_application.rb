require_relative "test_helper"

class TestApp < DottedRulers::Application
end

class DottedRulersAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/"

    assert last_response.ok?
    body = last_response.body
    assert body["Scott"]
  end

  def test_greeting
    get "/"
    assert last_response.ok?
    body = last_response.body
    assert body["Hello"]
  end
end