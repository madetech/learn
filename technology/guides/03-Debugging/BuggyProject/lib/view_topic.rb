class ViewTopic
  def execute(directory:, id:)
    File.open("#{directory}/#{id}/README.md", 'r') do |file|
      { content: file.read }
    end
  end
end
