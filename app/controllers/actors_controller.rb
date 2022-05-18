class ActorsController< ApplicationController

  def index
    @list_of_actors=Actor.all

    render({ :template => "actors_templates/index.html.erb"})

  end 

  def actors_details
 
    the_id=params.fetch("an_id")
     @the_actor=Actor.where({:id=>the_id }).at(0)
  
     render({ :template => "actors_templates/show.html.erb"})
   end


end
