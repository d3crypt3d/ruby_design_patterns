class DinnerMenuIterator
  include Enumerable

  def initialize
    @menus = []
  end
  
  # The class must provide a method each, if we
  # want to use methods from Enumerable module
  def each(&block)
    @menus.each(&block)
  end

  def add_item(item)
    add_singleton_methods(item) if item.is_a? Hash
    item = array_to_object(item) if item.is_a? Array
    @menus << item
  end

  private
  def add_singleton_methods(hash)
    hash.each_key do |key|
      hash.define_singleton_method(key) { self[key] }
    end
  end

  def array_to_object(arr)
    obj = Object.new

    ['name','description','vegeterian','price'].each_with_index do |v,i|
      obj.define_singleton_method(v) { arr[i] }
    end

    obj
  end
end

