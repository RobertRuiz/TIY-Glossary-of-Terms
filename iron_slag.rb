require_relative 'models'

require 'sinatra'
require 'rack-flash'

require 'sinatra/reloader' if development?

use Rack::MethodOverride
use Rack::Flash

terms = Term.all
terms.each do |term|
  # also print out the subject
  # puts "There is a term called #{term.name} in the category #{term.category.name} which is within the #{term.category.subject} category"
end

# Iterate over all the categories
categories = Category.all
categories.each do |category|
  # For each category print the name of the name of the category
  # puts "Category is: #{category.name}"

  # Then for THAT category, iterate over all the terms
  category.terms.each do |term|
    # For that term print it's name
    # puts "-- has a #{term.name} term"
  end
end
