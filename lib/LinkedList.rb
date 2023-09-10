# frozen_string_literal: true

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :head

  def initialize(*args)
    @head = Node.new(args.shift)
    args.each do |arg|
      if arg.is_a?(Array)
        arg.each do |item|
          add(item)
        end
      else
        add(arg)
      end
    end
  end

  def add(value)
    value.is_a?(Node) ? add_node(value) : add_value(value)

    current = @head
    current = current.next_node until current.next_node.nil?
    current.next_node = Node.new(value)
  end

  def get(index)
    current = @head
    index.times do
      current = current.next_node
    end
    current.value
  end

  def add_at(index, value)
    current = @head
    index.times do
      current = current.next_node
    end
    current.next_node = Node.new(value, current.next_node)
  end

  def remove_at(index)
    current = @head
    index.times do
      current = current.next_node
    end
    current.next_node = current.next_node.next_node
  end

  def reverse
    current = @head
    previous = nil
    until current.nil?
      next_node = current.next_node
      current.next_node = previous
      previous = current
      current = next_node
    end
    @head = previous
  end

  # return the kth element of the list
  def peek(k = 0)
    current = @head
    k.times do
      current = current.next_node
    end
    @head.value
  end

  def print
    current = @head
    list = []
    until current.nil?
      list << current.value
      current = current.next_node
    end
    puts list.join(' -> ')
  end
end
