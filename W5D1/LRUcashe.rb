class LRUCache
    def initialize(max_size)
        @max_size = size 
        @cache =[]
    end

    def count
      # returns number of elements currently in cache
      @cache.length
    end


# If the item is already in the cache, it is considered "recently used" and its position in the linked list is updated.
# If the item is not in the cache and the cache is not full, the item is added to the cache and becomes the most recently used item.
# If the item is not in the cache and the cache is full, the least recently used item is evicted to make room for the new item.

    def add(el)
      # adds element to cache according to LRU principle
        if @cache.include?(el)
            @cache.delete(el)
            @cache << el 
        elsif @cache.length >= @max_size 
            @cache.shift 
            @cache << el 
        else 
            @cache << el 
        end 
    end

    def show
      # shows the items in the cache, with the LRU item first
      print @cache 
    end

    private
    # helper methods go here!

  end