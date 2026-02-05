package com.estrongs.android.ui.guesture;

import android.gesture.Gesture;
import android.gesture.GestureStore;
import android.gesture.Prediction;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.m;
import com.estrongs.android.pop.q;
import com.estrongs.fs.FileSystemException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class b {
    private static List<String> e;

    /* renamed from: b, reason: collision with root package name */
    private static GestureStore f2235b = new GestureStore();
    private static HashSet<String> c = new HashSet<>();

    /* renamed from: a, reason: collision with root package name */
    public static boolean f2234a = true;
    private static boolean d = false;

    public static String a(Gesture gesture) {
        if (!f2234a) {
            return null;
        }
        ArrayList<Prediction> recognize = f2235b.recognize(gesture);
        if (recognize == null || recognize.size() <= 0) {
            return null;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < recognize.size() && !Double.isNaN(recognize.get(i2).score) && recognize.get(i2).score >= 2.0d) {
                String str = recognize.get(i2).name;
                if (!c.contains(str)) {
                    return str;
                }
                i = i2 + 1;
            }
            return null;
        }
    }

    public static void a() {
        InputStream inputStream;
        Throwable th;
        InputStream inputStream2 = null;
        if (d) {
            return;
        }
        try {
            f2234a = q.a(FexApplication.a()).al();
            c.clear();
            inputStream = com.estrongs.fs.impl.local.d.a(FexApplication.a(), "/sdcard/.estrongs/gestures");
            try {
                f2235b.load(inputStream);
                inputStream.close();
                e = new LinkedList();
                Iterator<String> it = f2235b.getGestureEntries().iterator();
                while (it.hasNext()) {
                    e.add(it.next());
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception e2) {
                    }
                }
                d = true;
            } catch (Exception e3) {
                inputStream2 = inputStream;
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (Exception e4) {
                    }
                }
                d = true;
            } catch (Throwable th2) {
                th = th2;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception e5) {
                    }
                }
                d = true;
                throw th;
            }
        } catch (Exception e6) {
        } catch (Throwable th3) {
            inputStream = null;
            th = th3;
        }
    }

    public static boolean a(String str) {
        ArrayList<Gesture> gestures = f2235b.getGestures(str);
        f2235b.removeEntry(str);
        if (d()) {
            return true;
        }
        if (gestures.size() > 0) {
            f2235b.addGesture(str, gestures.get(0));
        }
        return false;
    }

    public static boolean a(String str, Gesture gesture) {
        f2235b.removeEntry(str);
        f2235b.addGesture(str, gesture);
        b(str);
        if (d()) {
            return true;
        }
        f2235b.removeEntry(str);
        return false;
    }

    public static List<String> b() {
        return e;
    }

    public static void b(String str) {
        c.remove(str);
    }

    public static Gesture c(String str) {
        ArrayList<Gesture> gestures = f2235b.getGestures(str);
        if (gestures == null || gestures.size() <= 0) {
            return null;
        }
        return gestures.get(0);
    }

    public static boolean c() {
        return !m.M && d;
    }

    public static boolean d() {
        OutputStream outputStream = null;
        File file = new File("/sdcard/.estrongs");
        if (!file.exists() && !file.mkdir()) {
            return false;
        }
        try {
            try {
                try {
                    outputStream = com.estrongs.fs.impl.local.d.f("/sdcard/.estrongs/gestures");
                    f2235b.save(outputStream);
                    e = new LinkedList();
                    Iterator<String> it = f2235b.getGestureEntries().iterator();
                    while (it.hasNext()) {
                        e.add(it.next());
                    }
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                            return false;
                        }
                    }
                    return true;
                } catch (FileSystemException e3) {
                    e3.printStackTrace();
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                            return false;
                        }
                    }
                    return false;
                }
            } catch (IOException e5) {
                e5.printStackTrace();
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                        return false;
                    }
                }
                return false;
            }
        } catch (Throwable th) {
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                    return false;
                }
            }
            throw th;
        }
    }
}
