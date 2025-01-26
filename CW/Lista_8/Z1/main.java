public class main {
    public static void main(String[] args) {
        Queue<Integer> q = new Queue<>(5);
        try {
            q.enqueue(1);
            q.enqueue(2);
            q.enqueue(3);
            q.enqueue(4);
            q.enqueue(5);
        } catch (QueueInterface.FullException e) {
            System.out.println(e.getMessage());
        }

        System.out.println(q.toString());

        try {
            int i = 0;
            while(!q.isEmpty() && i++ < 3) {
                System.out.println(q.first());
                q.dequeue();
            }
        } catch (QueueInterface.EmptyException e) {
            System.out.println(e.getMessage());
        }

        try {
            q.enqueue(999);
        } catch (QueueInterface.FullException e) {
            System.out.println(e.getMessage());
        }

        System.out.println(q.toString());

        try {
            while (true) {
                System.out.println(q.first());
                q.dequeue();
            }
        } catch (QueueInterface.EmptyException e) {
            System.out.println(e.getMessage());
        }
    }
}