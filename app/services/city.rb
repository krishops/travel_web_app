class City
  def initialize(city)
    @city = city
  end 
  def get_city_review
    response = HTTParty.get('https://boiling-gorge-40516.herokuapp.com/reviews?city=' + @city)
    # response[0]["content"]
    array = []
    response.each do |item|
      array.push(item["content"])
    end 
    array
  end
end 