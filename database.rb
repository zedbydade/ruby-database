class Database
  def self.db_set(key)
    File.write('database', "#{key}, ", mode: 'a')
  end

  def self.db_get(key)
    file = File.open('database')
    file_data = file.read.split
    file_data.each do |data| 
      return data if data == key
      "Not Found"
    end
  end
end
