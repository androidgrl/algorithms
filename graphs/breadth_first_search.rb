require 'ostruct'

class Queue
  attr_reader :items

  def initialize
    @items = []
  end

  def enqueue(index)
    items.push(index)
  end

  def dequeue
    items.shift
  end

  def empty?
    items.length == 0
  end
end

def doBFS(graph, start)
  result = graph.map do |v|
    OpenStruct.new(distance: nil, predecessor: nil)
  end

  result[start].distance = 0

  queue = Queue.new
  queue.enqueue(start);

  while !queue.empty? do
    vertex = queue.dequeue
    graph[vertex].each do |neighbor|
      if result[neighbor].distance.nil?
        result[neighbor].distance = result[vertex].distance + 1
        result[neighbor].predecessor = vertex
        queue.enqueue(neighbor)
      end
    end
  end

  return result
end

graph = [
  [1],
  [0, 4, 5],
  [3, 4, 5],
  [2, 6],
  [1, 2],
  [1, 2, 6],
  [3, 5],
  []
];

puts doBFS(graph, 3)
