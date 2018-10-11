class LRUCache
  def initialize(size)
    @size = size
    @queue = []
  end

  def count
    @queue.length
  end

  def add(el)
    if @queue.include?(el)
      update_queue(el)
    elsif self.count >= @size
      remove_LRU
      @queue.unshift(el)
    else
      @queue.unshift(el)
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    @queue.reverse
  end

  private
  def update_queue(el)
    el_update = @queue.delete(el)
    @queue.unshift(el_update)
  end

  def remove_LRU
    @queue.pop
  end

end
