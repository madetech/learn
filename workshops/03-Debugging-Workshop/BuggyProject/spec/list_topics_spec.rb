require 'list_topics'
require 'topics_shared_context'

describe ListTopics do
  include_context 'topics'

  def list_topics_for(path)
    described_class.new.execute(directory: path)
  end

  it 'finds no topics for an empty directory' do
    path = create_directory!('no-topics')

    response = list_topics_for(path)

    expect(response[:topics]).to eq([])
  end

  it 'can find one topic' do
    path = create_directory!('one-topic')

    create_topic!(path, title: '00-Hello-World')

    response = list_topics_for(path)

    expect(response[:topics]).to(
      eq(
        [{ title: 'Hello World', id: '00-Hello-World' }]
      )
    )
  end

  it 'can order 4 topics correctly' do
    path = create_directory!('one-topic')

    create_topic!(path, title: '05-Csh-The-Second')
    create_topic!(path, title: '07-Zsh-The-Third')
    create_topic!(path, title: '01-First')
    create_topic!(path, title: '20-Bye-World')

    response = list_topics_for(path)

    expect(response[:topics]).to(
      eq(
        [
          { title: 'First', id: '01-First' },
          { title: 'Csh The Second', id: '05-Csh-The-Second' },
          { title: 'Zsh The Third', id: '07-Zsh-The-Third' },
          { title: 'Bye World', id: '20-Bye-World' }
        ]
      )
    )
  end
end
