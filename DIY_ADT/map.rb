class Map
  def initialize
    @m = []
  end

  def set(key, value)
    if @m.flatten.include?(key)
      @m.each do |set|
        if set[0] == key
          set[0], set[1] = key, value
        end
      end
    else
      @m << [key, value]
    end
  end

  def get(key)
    
  end

  def delete(key)
  end

  def show
  end
end
