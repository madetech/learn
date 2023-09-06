require 'view_topic'
require 'topics_shared_context'

describe ViewTopic do
  include_context 'topics'

  def save_topic_content!(path, title:, content:)
    file = File.open("#{path}/#{title}/README.md", 'w')
    file << content
  end

  def view_topic(path, id)
    described_class.new.execute(directory: path, id: id)
  end

  it 'can view a topic with no content' do
    path = create_directory!('one-topic')

    create_topic!(path, title: '00-Hello-World')
    save_topic_content!(path, title: '00-Hello-World', content: '')

    response = view_topic(path, '00-Hello-World')

    expect(response[:content]).to eq('')
  end

  it 'can view a topic with some content' do
    path = create_directory!('one-topic')

    create_topic!(path, title: '01-Hello-World')
    save_topic_content!(path, title: '01-Hello-World', content: '# Hello World')

    response = view_topic(path, '01-Hello-World')

    expect(response[:content]).to eq('# Hello World')
  end
end
