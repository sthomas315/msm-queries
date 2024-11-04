class DirectorsController < ApplicationController
def index
  render({:template => "director_templates/list"})
end

def show
  the_id = params.fetch("the_id")
  matching_records = Director.where({:id => the_id})
  @the_director = matching_records.at(0)
  render({:template => "director_templates/details"})
end

def youngest
  youngest_records = Director.where.not({ :dob => nil }).order({ :dob => :desc })
  @the_youngest = youngest_records.at(0)
  render({ :template => "director_templates/youngest.html.erb" })
end

def eldest
  oldest_records = Director.where.not({ :dob => nil }).order({ :dob => :asc })
  @the_oldest = oldest_records.at(0)
  render({ :template => "director_templates/eldest.html.erb" })
end

end
