require 'sinatra'
require_relative './super_simple_usecase'

before do
  @super_simple_usecase = SuperSimpleUsecase.new
end

get '/' do
  request_url = request.url
  text_to_display = @super_simple_usecase.execute(request_url)
  text_to_display
end
