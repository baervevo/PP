trait State:
    def next(): State
    override def toString(): String

class RedState extends State:
    override def next(): State = new RedAndYellowState
    override def toString(): String =
        """
            -----
            | ● |
            | ◌ |
            | ◌ |
            -----
        """

class RedAndYellowState extends State:
    override def next(): State = new GreenState
    override def toString(): String =
        """
            -----
            | ● |
            | ● |
            | ◌ |
            -----
        """

class GreenState extends State:
    override def next(): State = new YellowState
    override def toString(): String =
        """
            -----
            | ◌ |
            | ◌ |
            | ● |
            -----
        """

class YellowState extends State:
    override def next(): State = new RedState
    override def toString(): String =
        """
            -----
            | ◌ |
            | ● |
            | ◌ |
            -----
        """

class TrafficLights:
    private var currentState: State = new RedState
    def next(): Unit = 
        currentState = currentState.next()

    override def toString(): String = currentState.toString

@main def main(): Unit =
    val trafficLights = new TrafficLights
    for(_ <- 1 to 10) do
        println(trafficLights)
        trafficLights.next()
        Thread.sleep(1000) 