var Queue = function() {
  this.items = [];
};
Queue.prototype.enqueue = function(obj) {
  this.items.push(obj);
};
Queue.prototype.dequeue = function() {
  return this.items.shift();
};
Queue.prototype.isEmpty = function() {
  return this.items.length === 0;
};

var doBFS = function(graph, source) {
  var bfsInfo = [];

  for (var i = 0; i < graph.length; i++) {
    bfsInfo[i] = {
      distance: null,
      predecessor: null };
  }

  bfsInfo[source].distance = 0;

  var queue = new Queue();
  queue.enqueue(source);

  while(!queue.isEmpty()){
    var vertex = queue.dequeue();
    for(var u = 0; u < graph[vertex].length; u++){
      var neighbor = graph[vertex][u];
      if (bfsInfo[neighbor].distance === null) {
        bfsInfo[neighbor].distance = bfsInfo[vertex].distance + 1;
        bfsInfo[neighbor].predecessor = vertex;
        queue.enqueue(neighbor);
      }
    }
  }
  return bfsInfo;
};

var adjList = [
  [1],
  [0, 4, 5],
  [3, 4, 5],
  [2, 6],
  [1, 2],
  [1, 2, 6],
  [3, 5],
  []
];
var bfsInfo = doBFS(adjList, 3);

Program.assertEqual(bfsInfo[0], {distance: 4, predecessor: 1});
Program.assertEqual(bfsInfo[1], {distance: 3, predecessor: 4});
Program.assertEqual(bfsInfo[2], {distance: 1, predecessor: 3});
Program.assertEqual(bfsInfo[3], {distance: 0, predecessor: null});
Program.assertEqual(bfsInfo[4], {distance: 2, predecessor: 2});
Program.assertEqual(bfsInfo[5], {distance: 2, predecessor: 2});
Program.assertEqual(bfsInfo[6], {distance: 1, predecessor: 3});
Program.assertEqual(bfsInfo[7], {distance: null, predecessor: null});
