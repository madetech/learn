shared_context 'topics' do
  def create_directory!(name)
    path = "#{__dir__}/tmp/#{name}"
    FileUtils.mkdir_p path
    path
  end

  def clean_up_temporary_directory!
    FileUtils.rm_rf "#{__dir__}/tmp"
  end

  def create_topic!(path, title:)
    topic_path = "#{path}/#{title}"
    FileUtils.mkdir_p(topic_path)
    FileUtils.touch("#{topic_path}/README.md")
  end

  before do
    clean_up_temporary_directory!
  end
end
