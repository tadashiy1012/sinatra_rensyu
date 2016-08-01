require 'sinatra'
require 'sinatra/reloader'

class Person
  def initialize(name)
    @name = name
  end
  attr_accessor:name
end

get '/' do
  'hello world!'
end

get '/calc/:a/:b' do |a, b|
  "#{a} + #{b} = #{a.to_i + b.to_i}"
end

get '/time' do
 erb :erb_test
end

get '/person/:name' do |n|
  p = Person.new(n)
  "name:#{p.name}"
end
