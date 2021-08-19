class Country
  def initialize(country)
    @country = country
  end

  def get_country_review
    response = HTTParty.get('https://boiling-gorge-40516.herokuapp.com/reviews?country=' + @country)
    # response[0]["content"]
    array = []
    response.each do |item|
      array.push(item["content"])
    end 
    array
  end
end 