class MoviesController < ApplicationController  # To inherit from the class was created by ruby's team
def index 
@movies = Movie.all
end 
def show 
    @movie = Movie.find(params[:id])
end 
 def new
  
 end 

def create
    
@movie = Movie.new(movie_params)
if  @movie.save 
  redirect_to movies_path 
 else 
  render action: "new"

end 
end
def movie_params

    params.require(:movie).permit(:title, :director, :rating)

end 

def destroy
    @movie = Movie.find(params[:id]) 
     if @movie.destroy
      redirect_to movies_path 
     else
      render "new"
end
end

def edit 
    @movie = Movie.find(params[:id]) 
end 

def update 
  @movie = Movie.find(params[:id]) 
  if @movie.update(movie_params)
          redirect_to movies_path 
  else 
    render 'edit'
  end

end 

end 



