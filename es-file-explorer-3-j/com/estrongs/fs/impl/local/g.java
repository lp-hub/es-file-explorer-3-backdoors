package com.estrongs.fs.impl.local;

/* loaded from: classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private static String[] f3097a = new String[35];

    static {
        f3097a[1] = "Operation not permitted";
        f3097a[2] = "No such file or directory";
        f3097a[3] = "No such process";
        f3097a[4] = "Interrupted system call";
        f3097a[5] = "I/O error";
        f3097a[6] = "No such device or address";
        f3097a[7] = "Argument list too long";
        f3097a[8] = "Exec format error";
        f3097a[9] = "Bad file number";
        f3097a[10] = "No child processes";
        f3097a[11] = "Try again";
        f3097a[12] = "Out of memory";
        f3097a[13] = "Permission denied";
        f3097a[14] = "Bad address";
        f3097a[15] = "Block device required";
        f3097a[16] = "Device or resource busy";
        f3097a[17] = "File exists";
        f3097a[18] = "Cross-device link";
        f3097a[19] = "No such device";
        f3097a[20] = "Not a directory";
        f3097a[21] = "Is a directory";
        f3097a[22] = "Invalid argument";
        f3097a[23] = "File table overflow";
        f3097a[24] = "Too many open files";
        f3097a[25] = "Not a typewriter";
        f3097a[26] = "Text file busy";
        f3097a[27] = "File too large";
        f3097a[28] = "No space left on device";
        f3097a[29] = "Illegal seek";
        f3097a[30] = "Read-only file system";
        f3097a[31] = "Too many links";
        f3097a[32] = "Broken pipe";
        f3097a[33] = "Math argument out of domain of func";
        f3097a[34] = "Math result not representable";
    }

    public static String a(int i) {
        String str = null;
        try {
            str = f3097a[i];
        } catch (Exception e) {
        }
        return str == null ? "error code:" + i : str;
    }
}
