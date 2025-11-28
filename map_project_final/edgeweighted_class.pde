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

    public int compareTo(EdgeWeighted otherEdge) {
        if (this.weight > otherEdge.weight) {
            return 1;
        }
        else return -1;
    }
}


