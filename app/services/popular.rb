class Popular
  def self.get_most_popular
    response = HTTParty.get('https://boiling-gorge-40516.herokuapp.com/mostpopular')
    # response[0]["content"]
  end    
end 

