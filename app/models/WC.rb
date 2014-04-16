require_relative './ReadWriteFile'

class WC
  include ReadWritFile

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

  def print_count file_name, options
    data = read_from_file file_name
    puts get_count data, options
  end
end

WC.new.print_count  "app/models/input.txt", "wc"

