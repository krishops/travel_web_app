class Travel
  def initialize(country)
    @country = country
  end

  def get_review
    response = HTTParty.get('http://host.docker.internal:3000/reviews?country=' + @country)
    # response[0]["content"]
    array = []
    response.each do |item|
      array.push(item["content"])
    end 
    array
  end
end 