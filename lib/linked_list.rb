# frozen_string_literal: true

require './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize(head = nil, tail = nil)
    @head = head
    @tail = tail
  end

  def append(value)
    node = Node.new(value)
    return @head = node if @head.nil?

    if @tail.nil?
      @head.next_node = node
      return @tail = node
    end
    @tail.next_node = node
    @tail = node
  end

  def prapend(value)
    @tail = head if tail.nil?
    @head = Node.new(value, head)
  end

  def count(count = 0)
    current_node = @head
    until current_node.nil?
      count += 1
      current_node = current_node.next_node
    end
    @count = count
  end

  def size
    count
    puts @count
    @count
  end

  # head and tail method == puts self.head/tail.value
  # using attr_accessor

  def at(index, index_count = 1)
    return puts 'error!' if index.zero?

    if index < count
      current_node = @head

      until index_count == index
        index_count += 1
        current_node = current_node.next_node
      end
      puts current_node.value

    else
      puts 'index value exceeds list size!'
    end
  end

  def pop
    return nil if count <= 0

    current_node = @head
    current_node = current_node.next_node until current_node.next_node == @tail
    current_node.next_node = nil
    @tail = current_node
  end

  def contains?(value)
    current_node = @head
    count.times do
      return true if current_node.value == value

      current_node = current_node.next_node
    end
    false
  end

  def find(value)
    return nil unless contains?(value)

    current_node = @head
    i = 1
    count.times do
      return puts i if current_node.value == value

      current_node = current_node.next_node
      i += 1
    end
  end

  def to_s
    string = ''
    current_node = @head
    count.times do
      string += "(#{current_node.value}) -> "
      current_node = current_node.next_node
    end
    string += 'nil'
    puts string
  end

  def insert_at(value, _index)
    node = Node.new(value)
  end
end

testa = LinkedList.new
testa.append('ciao')
testa.prapend(12)
testa.append(2)
testa.append(3)
testa.append(4)
testa.to_s
testa.prapend(655)
testa.to_s
