require 'sinatra'
require 'redcarpet'
require_relative 'lib/view_topic'

get '/' do
  response = List.new.execute(directory: "#{__dir__}/../../")

  output = '<h1>Learning Topics</h1>'
  output << '<ul>'
  response[:topics].each do |topic|
    output << "<li><a href=\"/topic/#{topic[:id]}\">#{topic[:title]}</a></li>"
  end
  output << '</ul>'

  output
end

get '/topic/:id' do
  response = ViewTopic.new.execute(
    directory: "#{__dir__}/../../",
    id: params[:id]
  )

  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)

  markdown.render(response[:content])
end
