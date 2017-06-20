require 'rubygems'
require 'json'
require 'yaml'

def hashify_array(array_of_hashes)

  array_of_hashes.inject({}) do |acc, hashed_pair|
    acc[hashed_pair['Name']] = hashed_pair['Value']
    acc
  end

end

json_string = gets.strip
while !json_string.empty? do

  puts hashify_array(JSON.load(json_string)).to_yaml
  json_string = gets.strip

end
