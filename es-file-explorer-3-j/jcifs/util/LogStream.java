package jcifs.util;

import java.io.PrintStream;

/* loaded from: classes.dex */
public class LogStream extends PrintStream {
    private static LogStream inst;
    public static int level = 1;

    public LogStream(PrintStream printStream) {
        super(printStream);
    }

    public static LogStream getInstance() {
        if (inst == null) {
            setInstance(System.err);
        }
        return inst;
    }

    public static void setInstance(PrintStream printStream) {
        inst = new LogStream(printStream);
    }

    public static void setLevel(int i) {
        level = i;
    }
}
