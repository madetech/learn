class ListTopics
  def execute(directory:)
    @directories = Dir.glob("#{directory}/**/README")

    return { topics: [] } if @directories.empty?

    { topics: to_presentable_topics(topics) }
  end

  private

  def to_presentable_topics(topics)
    topics.map do |topic|
      { title: topic.title, id: topic.id }
    end
  end

  def topics
    @directories.map { |directory| Topic.new(path: directory) }.sort
  end

  class Topic
    include Comparable

    def initialize(path:)
      @path = path
    end

    def <=>(other)
      ranking <=> other.ranking
    end

    def id
      @path.gsub(%r{.*([0-9]{2}.*?)\/.*}, '\1')
    end

    def ranking
      @path.gsub(%r{.*/([0-9]{2}).*?/}, '\1').to_i
    end

    def title
      @path.gsub(%r{.*[0-9]{2}(.*?)\/.*}, '\1')
           .tr('-', ' ')
           .strip
    end
  end
end
