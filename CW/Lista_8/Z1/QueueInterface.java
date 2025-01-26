public interface QueueInterface<E> {
    public void enqueue(E x) throws FullException;
    public void dequeue();
    public E first() throws EmptyException;
    public boolean isEmpty();
    public boolean isFull();

    public class FullException extends Exception {
        public FullException() {
            super("Queue is full");
        }
    }

    public class EmptyException extends Exception {
        public EmptyException() {
            super("Queue is empty");
        }
    }
}