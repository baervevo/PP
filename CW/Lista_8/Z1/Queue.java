import java.util.ArrayList;

public class Queue<E> implements QueueInterface<E> {
    final private ArrayList<E> list;
    private int front;
    private int rear;
    private int size;

    public Queue(int size) {
        front = 0;
        rear = 0;
        this.size = 0;
        list = new ArrayList<>(size);
        for (int i = 0; i < size; ++i) {
            list.add(null);
        }
    }

    @Override
    public void enqueue(E x) throws FullException {
        System.out.println(this.toString());
        if(list.size() == rear - front) {
            throw new FullException();
        }

        list.set(rear, x);
        rear = (rear + 1) % list.size();
        size++;
        System.out.println(this.toString());
    }

    @Override
    public void dequeue() {
        front = (front + 1) % list.size();
        size--;
    }

    @Override
    public E first() throws EmptyException {
        if (isEmpty()) {
            throw new EmptyException();
        }

        return list.get(front);
    }

    @Override
    public boolean isEmpty() {
        return size == 0;
    }

    @Override
    public boolean isFull() {
        return size == list.size();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Queue: ");
        for (int i = 0; i < size; i++) {
            sb.append(list.get((front + i) % list.size()));
            if (i < size - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }
}