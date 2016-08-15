require_relative 'models'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'rack-flash'

# use Rack::MethodOverride
# use Rack::Flash

get '/' do
  @terms = Term.all.take(5)
  @categories = Category.all

  erb :homepage
end

get '/terms' do
  @terms = Term.all

  erb :terms_index
end

get '/terms/:id' do
  # Lets fetch the ID from the URL so we know which term we are showing!
  id = params["id"]

  # Lets go fetch that term from the database
  @term = term.find_by(id: id)

  # if we have a term, lets render the template
  if @term
    erb :terms_show
  else
    # otherwise, just send the user back to the terms index page (e.g. "/terms")
    redirect "/terms"
  end
end



#   # also print out the subject
#   puts "There is a term called #{term.name} in the category #{term.category.name} which is within the #{term.category.subject} category"
# end
#
# Iterate over all the categories
# categories = Category.all
# categories.each do |category|
#   # For each category print the name of the name of the category
#   puts "Category is: #{category.name}"
#
#   # Then for THAT category, iterate over all the terms
#   category.terms.each do |term|
#     # For that term print it's name
#     puts "-- has a #{term.name} term"
#   end
# end

# <% content_for :title do %>
# Welcome to the Iron Slag
# <% end %>
#
# <% content_for :banner do%>
# Welcome to the Iron Slag - Iron Yard's own Glossary of Tech and Comedy terms
# <% end %> -->

# <!-- <div class="container">
#   <div>
#     <h2>Terms</h2>
#     <ul>
#     <% @terms.each do |term| %>
#       <li><a href="/terms/<%= term.id %>"><%= term.name %></a></li>
#     <% end %>
#     </ul>
#
# <!-- clicking on any term takes one to the definition -->
# and provides a weblink as an additional resource
#
# <!-- Search for terms (match against the name or the definition) -->
#     <!-- <form action="/terms/search" method="post">
#       <input type="text" name="name">
#       <input type="submit" value="Search Terms">
#     </form>
#     </div>
#
# <!-- Make new terms -->
#     <!-- <a href="/terms/new">Add a new term</a> --> --> -->
#
# <!-- Change terms -->
#
# <!-- Remove terms -->
#
# <!-- List of available categories "Back End Engineering" or "Front End Engineering"-->
#
# <!-- Make new categories, but not change them, delete them, or search them -->
#
# <!-- <h2>The most recent 5 terms added are: #{terms.created_at.last.limit(5)} </h2> -->
