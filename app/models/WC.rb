class WC

  def line_count data
    data.split("\n").count
  end

  def word_count data
    data.split(" ").count
  end

  def character_count data
    data.split("").count
  end

  def get_count data,options="wlc"
    count = Array.new
    count << line_count(data) if options.include? "l"
    count << word_count(data) if options.include? "w"
    count << character_count(data) if options.include? "c"
    count.join(' ')
  end

  def print_count data, options
    puts get_count data, options
  end
end
