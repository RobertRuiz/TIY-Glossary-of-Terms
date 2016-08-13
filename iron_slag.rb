require_relative 'models'
require 'sinatra'
# require 'rack-flash'
require 'sinatra/reloader' if development?

# use Rack::MethodOverride
# use Rack::Flash

get '/' do
  @terms = Term.all
  @categories = Category.all

  erb :homepage
end

get '/terms/update/:id' do
  id = params["id"]
  @terms = Term.find_by(id: id)

  erb :term_update
end

# Actually does the update when posted from the form
post '/terms/update/:id' do
  @id = params["id"]
  term = Term.find_by(id: @id)

  if term
    # extract the part of the hash that has to do with "term"
    term_attributes = params["term"]

    # Use *that* hash to update
    term.update_attributes(term_attributes)

    # redirect home
    redirect "/"
  else
    erb :not_found
  end
end

# terms = Term.all
# terms.each do |term|
#   # also print out the subject
#   puts "There is a term called #{term.name} in the category #{term.category.name} which is within the #{term.category.subject} category"
# end
#
# # Iterate over all the categories
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
