class Database < self
  def db_set(key)
    File.open('database', 'w') { |f| f.write "#{key}" }
  end

end
