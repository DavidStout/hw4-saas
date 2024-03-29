class Movie < ActiveRecord::Base

  attr_accessible :title, :rating, :description, :release_date, :director

  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end


  def self.find_id_movie title
     Movie.find_by_title( title).id
  end

end

