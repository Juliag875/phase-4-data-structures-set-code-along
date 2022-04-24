class MySet

  def initialize(enumerable = [])
    @hash = {}
    enumerable.each do |value|
      add(value)
    end
  end

#  the Hash#has_key? (Links to an external site.) method instead, which will always return either true or false
  def include?(value)
    hash.has_key?(value)
  end

  def add(value)
    hash[value] = true # add a value as a key on the hash
    self # return the updated set
  end

  def delete(value)
    hash.delete(value)
    self
  end

  def size
    hash.size
  end

  def self.[](*args)
    new(args)
  end

  # Removes all the items from the set, and returns the updated set.
  def clear 
    hash.clear 
    self
  end

  # Iterates over each item in the set, and returns the set
  def each(&block)
    self.hash.keys.each(&block)
    self
  end

  # Prints the set in a readable format.
  def inspect
    "#<#{self.class.name}: {#{self.hash.keys.join(', ')}}>"
  end
  

  private 
  
  attr_reader :hash

end
