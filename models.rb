require 'pg'
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  database: "iron_slag"
)

class Category < ActiveRecord::Base
  # This means that if we have an instance (one object) of a Category
  # we can call `terms` and get an array of the terms for this category
  has_many :terms
end

class Term < ActiveRecord::Base
  # This means if we have an instance (one object) of a Term we can
  # call `category` to get back an object representing it's category
  belongs_to :category
end
