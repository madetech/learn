class Wrapper
  def initialize(text, width)
    @text = text
    @width = width
  end

  def fit
    ls = []
    l = ''
    @text.lines do |line|
      line.chomp! "\n"
      if line.empty?
        unless l.empty?
          ls.push l
          l = ''
        end
        ls.push ''
      end

      words = line.split ' '

      words.each do |word|
        word.chomp! "\n"

        if l.length + word.length < @width
          if !l.empty?
            l << ' ' << word
          else
            l = word
          end
        else
          if word.length >= @width
            ls.push l unless l == ''
            ls.push word
            l = ''
          else
            ls.push l
            l = word
          end
        end
      end
    end

    ls.push l
    if l.length <= 0
      ls.join("\n")
    else
      ls.join("\n") + "\n"
    end
  end

  def wrap
    listy = []

    @text.lines do |ruler|
      ruler.chomp! "\n"
      if ruler.length > @width
        new_lines = split_line(ruler, @width)
        while new_lines.length > 1 && new_lines[1].length > @width
          listy.push new_lines[0]
          new_lines = split_line new_lines[1], @width
        end
        listy += new_lines
      else
        listy.push ruler
      end
    end
    listy.map(&:rstrip!)
    listy.join("\n") + "\n"
  end

  def split_line(l, cols)
    at = l.index /\s/
    last_at = at

    while !at.nil? && at < cols
      last_at = at
      at = l.index /\s/, last_at + 1
    end

    if last_at.nil?
      [l]
    else
      [l[0, last_at], l[last_at + 1, l.length]]
    end
  end
end
