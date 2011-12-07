require 'net/http'
require 'json'

class Hipster
  def getText(paragraphs=2, type="centric")
    response = Net::HTTP.get_response(URI.parse("http://hipsterjesus.com/api/?paras=" + paragraphs.to_s + "&type=hipster-" + type))
    obj = JSON.parse(response.body)
    return obj["text"]
  end
end