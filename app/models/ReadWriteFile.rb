module ReadWritFile
  def read_from_file file_name
    file = File.open(file_name, "r")
    file_data = file.read
    file.close
    file_data
  end

  def write_to_file file_name, text
    File.open(file_name, 'w') {|f| f.write(text) }
  end
end