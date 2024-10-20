def militaryMinutes(hours: Int, minutes: Int, timeOfDay: String): String  = {
    val buildString = (h: Int, m: Int) => h + ":" + m;

    def amFunc(h: Int, m: Int) = {
        if (h == 12) buildString(0, m);
        else buildString(h, m);
    }

    def pmFunc(h: Int, m: Int) = {
        if (h == 12) buildString(h, m);
        else buildString(h + 12, m);
    }

    if (minutes > 59 || minutes < 0) {
        throw new IllegalArgumentException("Minutes should be between 0 and 59.");
    } else if (hours > 12 || hours < 0) {
        throw new IllegalArgumentException("Hours should be between 0 and 12");
    }

    if (timeOfDay == "PM") {
        pmFunc(hours, minutes);
    } else if (timeOfDay == "AM") {
        amFunc(hours, minutes)
    } else {
        throw new IllegalArgumentException("Time of day should be AM or PM.");
    }
}

@main def main() = {
    println(militaryMinutes(5, 12, "PM"));
    println(militaryMinutes(12, 59, "AM"));
    println(militaryMinutes(12, 43, "PM"));
    println(militaryMinutes(12, 60, "AM"));
}