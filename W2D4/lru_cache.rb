class LRUCache
  def initialize(size=4)
    @size = size
    @cache = []
  end

  def count
    # returns number of elements currently in cache
    @cache.length
  end

  def add(item)
    # adds element to @cache according to LRU principle
    if @cache.include?(item)
      @cache.delete(item)
    elsif @cache.length >= @size
      @cache.shift
    end
    @cache << item
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @cache
  end

end
