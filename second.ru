require 'rack'

class MyServer
  def call(env)
    return [200, {'Content-Type' => 'text/html'}, pretty_response]
  end

  def pretty_response
    (Time.new.to_i % 2).zero? ? ['<p>hiya!</p>'] : ['<h1>YoYoYOOOO!</h1>', '<p>what\'s up playa?</p>']
  end
end

run MyServer.new