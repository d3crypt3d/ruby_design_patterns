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
    @menus << process_aggregate(item)
  end

  private
  def process_aggregate(aggregate)
    item = case aggregate
           when Hash
             aggregate.each_key do |key|
               aggregate.define_singleton_method(key) { self[key] }
             end
           when Array
             # But turn an array into an Object
             Object.new.tap do |obj|
               ['name','description','vegeterian','price'].each_with_index do |v,i|
                 obj.define_singleton_method(v) { aggregate[i] }
               end
             end
           when DinnerMenu
             return aggregate
           else
             return
           end

    # Meaningful operator will be added for hashes and ex-arrays
    item.define_singleton_method(:<=>) do |other_item| 
      self.price <=> other_item.price
    end

    item
  end
end

