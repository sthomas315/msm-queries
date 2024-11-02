class DirectorsController < ApplicationControllers
def index
  render({:template => "director_templates/list"})
end
end
