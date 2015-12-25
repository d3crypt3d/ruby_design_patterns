class Menu
  attr_reader :children, :name, :description
  attr_accessor :parent

  def initialize(name, description)
    @name, @description = name, description
    @children = []
  end

  def add_child(node)
    @children << node
    node.parent = self
  end

  def remove_child(node)
    @children.delete node
  end

  def [](index)
    @children[index]
  end

  def []=(index,node)
    replaced_child = @children[index]
    @children[index] = node
    replaced_child.parent = nil
    node.parent = self
  end

  def leaf?
    @children.empty?
  end

  # The simpliest non-recursive data structure is created
  # with a following method:
  # [
  #   => node object
  #   [name, description], 
  #
  #   => leaves container
  #   [{name: 'name', description: 'description', price: float, vegeterian: bool},  
  #    {name: 'name', description: 'description', price: float, vegeterian: bool},
  #    ... ],
  #   [name, description],
  #   ...
  # ]  
  #
  # The recursion will be used, though
  def collect_description
    # The first item in a data structure (that represents the node), is a current object iteslf,
    # that's memo goes as an array with instance vars
    @children.sort.inject([[@name,@description]]) do |memo, obj|
      if obj.leaf? 
        # The leaves processing goes without recursion
        hash_item = {name: obj.name, description: obj.description, price: obj.price, vegeterian: obj.is_vegeterian?}
        memo.tap do |o|
          if o.last[0].is_a?(Hash)
            # If the leaves container exist, apppend
            o.last << hash_item 
          else
            # If the leaves container is absent
            o << [hash_item]
          end
        end
      else
        # Recursion goes here, hence we will use concatenation
        # (we want to build non-recursive data structure) 
        memo + obj.collect_description
      end
    end
  end

  # Pre-sorting is vitally important for out data structure,
  # nodes have names and descriptions only, lets order objects
  # by having a :price method 
  def <=>(another_object)
    return 0 if self.respond_to?(:price) && another_object.respond_to?(:price)
    return 1 if !self.respond_to?(:price)
    return -1 if !another_object.respond_to?(:price)
    self <=> another_object
  end
end
