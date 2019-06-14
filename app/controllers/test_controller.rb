class TestController < ApplicationController

  def send_requisition
    uri = URI('https://api-sbx.portaldeassinaturas.com.br/api/v2/document/batchBlock')
    request = Net::HTTP::Post.new(uri.request_uri)
    # Request headers
    request['Content-Type'] = 'application/json'
    # Request headers
    request['Token'] = '{subscription key}'
    # Request body
    request.body = "{
      documents: [123456],
      status: true
    }"
    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
      http.request(request)
    end
    @test =  response.body
end

  def back
  end

end
