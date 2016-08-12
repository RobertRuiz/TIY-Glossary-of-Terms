require 'sqlite3'
require 'active_record'
# require 'sinatra'
# require 'rack-flash'
#
# require 'sinatra/reloader' if development?
#
# use Rack::MethodOverride
# use Rack::Flash

ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "iron_slag.db"
)

class Category < ActiveRecord::Base
  has_many :terms
end

class Term < ActiveRecord::Base
  belongs_to :category
end

terms = Term.all
terms.each do |term|
  # also print out the subject
  puts "There is a term called #{term.name} in the category #{term.category.name} which is within the #{term.category.subject} category"
end

# Iterate over all the categories
# For each category print the name of the name of the category
# Then for THAT category, iterate over all the terms
# For that term print it's name
