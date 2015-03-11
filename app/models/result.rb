class Result < ActiveRecord::Base
  
  def sort_by_distance(distance, name)
    distance = distance.sort { |x, y| x[:name] <=> y[:name] }
  end
end
