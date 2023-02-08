# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography
    dir_id = self.id
    matching_movies = Movie.where({ :director_id => dir_id })
    #the_movie = matching_movies.at(0)
    the_movie = matching_movies
    return the_movie
  end
end
