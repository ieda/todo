require_relative "spec_helper"
require_relative "../todo.rb"

def app
  Todo
end

describe Todo do
  it "responds with a welcome message" do
    get '/'

    last_response.body.must_include 'Welcome to the Sinatra Template!'
  end
end
