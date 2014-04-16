require_relative './ReadWriteFile'

class WC
  include ReadWritFile
  attr_accessor :data
  def initialize
    @data = ""
  end

  def line_count
    @data.split("\n").count
  end

  def word_count
    @data.split(" ").count
  end

  def character_count
    @data.split("").count
  end

  def get_count options="wlc"
    count = Array.new
    count << line_count if options.include? "l"
    count << word_count if options.include? "w"
    count << character_count if options.include? "c"
    count.join(' ')
  end

  def print_count file_name, options
    @data = read_from_file file_name
    puts get_count options
  end
end

WC.new.print_count  "app/models/input.txt", "wc"

