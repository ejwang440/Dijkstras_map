import java.util.LinkedList;
public class NodeWeighted {
    // The int n and String name are just arbitrary attributes
    // we've chosen for our nodes these attributes can of course
    // be whatever you need
    int n;
    String name;
    private boolean visited;
    LinkedList<EdgeWeighted> edges;
    Location building;

     NodeWeighted(int n, String name, Location building) {
        this.n = n;
        this.name = name;
        visited = false;
        edges = new LinkedList<EdgeWeighted>();
        this.building = building;
    }

    boolean isVisited() {
        return visited;
    }

    void visit() {
        visited = true;
    }

    void unvisit() {
        visited = false;
    }
}
