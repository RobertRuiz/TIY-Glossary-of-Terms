require 'sqlite3'
require 'active_record'
require 'sinatra'
require 'rack-flash'

require 'sinatra/reloader' if development?

ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "iron_slag.db"
)

use Rack::MethodOverride
use Rack::Flash

class Category < ActiveRecord::Base
  has_many :terms
end

class Term < ActiveRecord::Base
  belongs_to :category
end
