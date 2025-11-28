public class EdgeWeighted implements Comparable<EdgeWeighted> {

    NodeWeighted source;
    NodeWeighted destination;
    float weight;

    EdgeWeighted(NodeWeighted s, NodeWeighted d, float w) {
        source = s;
        destination = d;
        weight = w;
    }

    public String toString() {
        return String.format("(%s -> %s, %f)", source.name, destination.name, weight);
    }

    // We need this method if we want to use PriorityQueues instead of LinkedLists
    // to store our edges, the benefits are discussed later, we'll be using LinkedLists
    // to make things as simple as possible
    public int compareTo(EdgeWeighted otherEdge) {

        // We can't simply use return (int)(this.weight - otherEdge.weight) because
        // this sometimes gives false results
        if (this.weight > otherEdge.weight) {
            return 1;
        }
        else return -1;
    }
}

