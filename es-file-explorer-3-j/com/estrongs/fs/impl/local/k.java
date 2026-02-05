package com.estrongs.fs.impl.local;

import com.baidu.sapi2.BDAccountManager;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public Object f3102a;

    /* renamed from: b, reason: collision with root package name */
    public Object f3103b;
    public Object c;
    public Object d;
    public Object e;
    public Object f;
    private Object g = null;

    private String a(String str) {
        String str2;
        String str3;
        int i = 1;
        String[] split = str.split("\\s+");
        int i2 = 1;
        while (true) {
            if (i2 >= split.length) {
                break;
            }
            if (!split[i2].startsWith("/")) {
                i2++;
            } else if (split[i2].equals("/")) {
                str2 = "/ " + split[0] + " ";
            } else if (split[i2].equals("/system")) {
                str2 = "/system " + split[0] + " ";
            }
        }
        str2 = null;
        Boolean bool = this.f instanceof Boolean ? (Boolean) this.f : null;
        if (bool == null || !bool.booleanValue()) {
            if (str2 == null && split[0].startsWith("/dev/block")) {
                while (true) {
                    if (i < split.length) {
                        if (split[i].startsWith("/") && !split[i].equals("/cache") && !split[i].equals("/pds") && !split[i].equals("/modem/nvm1") && !split[i].equals("/firmware") && !split[i].equals("/efs") && !split[i].toLowerCase().equals("/storage/extsdcard") && !split[i].equals("/persist") && !split[i].equals("/storage_int") && !split[i].startsWith("/data") && !split[i].startsWith("/devlog") && !split[i].contains("/sdcard") && !split[i].startsWith("/mnt/secure") && !split[i].startsWith("/mnt/asec")) {
                            str2 = split[i] + " " + split[0] + " ";
                            break;
                        }
                        i++;
                    } else {
                        break;
                    }
                }
            }
            i = i2;
        } else {
            if (str2 == null) {
                while (true) {
                    if (i >= split.length) {
                        break;
                    }
                    if (split[i].startsWith("/")) {
                        str2 = split[i] + " " + split[0] + " ";
                        break;
                    }
                    i++;
                }
            }
            i = i2;
        }
        if (str2 == null) {
            return null;
        }
        String substring = str.substring(str.indexOf(split[i]) + split[i].length());
        if (substring.indexOf(" ro ") >= 0 || substring.indexOf("ro,") >= 0 || substring.indexOf("ro)") >= 0) {
            str3 = str2 + "ro";
        } else {
            if (substring.indexOf(" rw ") < 0 && substring.indexOf("rw,") < 0 && substring.indexOf("rw)") < 0) {
                return null;
            }
            str3 = str2 + "rw";
        }
        return str3;
    }

    private String a(String str, int i, int i2, int i3, int i4, int i5) {
        String str2 = null;
        String[] split = str.split("\\s+");
        try {
            if (Integer.parseInt(split[i3]) != i5) {
                return null;
            }
            str2 = split[i2] + " " + (i4 == -1 ? "0" : split[i4]) + " " + split[i];
            return str2;
        } catch (Exception e) {
            return str2;
        }
    }

    private String a(String str, int i, int i2, int i3, int i4, String[] strArr) {
        String str2 = null;
        String[] split = str.split("\\s+");
        try {
            if (split[i] == null) {
                return null;
            }
            for (int i5 = 0; i5 < strArr.length; i5++) {
                if (split[i].equals(strArr[i5]) || split[i].endsWith("/" + strArr[i5])) {
                    str2 = split[i2] + " " + (i4 == -1 ? "0" : split[i4]) + " " + split[i];
                    return str2;
                }
            }
            return null;
        } catch (Exception e) {
            return str2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01a3, code lost:
    
        if (r19 == 15) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01a9, code lost:
    
        if (r19 != 14) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01ab, code lost:
    
        r20.d = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:?, code lost:
    
        return false;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x00b7. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object d() {
        String str;
        String str2;
        boolean z;
        int i;
        this.e = true;
        n nVar = (n) this.f3102a;
        BufferedWriter bufferedWriter = nVar.f3109b;
        BufferedReader bufferedReader = nVar.c;
        String str3 = (String) this.f3103b;
        int intValue = ((Integer) this.c).intValue();
        try {
            bufferedWriter.write(str3 + "\n");
            bufferedWriter.flush();
            bufferedWriter.write("echo \n");
            bufferedWriter.flush();
            bufferedWriter.write("echo '$-----ESTOOL-END-----$'\n");
            bufferedWriter.flush();
            boolean z2 = true;
            String str4 = null;
            int i2 = 0;
            String str5 = null;
            String[] strArr = null;
            int i3 = 0;
            if (intValue == 15) {
                strArr = (String[]) this.d;
            } else if (intValue == 14) {
                i3 = ((Integer) this.d).intValue();
            }
            int i4 = -1;
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            while (true) {
                try {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine != null) {
                            String trim = readLine.trim();
                            if (trim != null && trim.length() != 0) {
                                if (!h.b(trim)) {
                                    switch (intValue) {
                                        case 4:
                                            if (trim.length() > 2) {
                                                i = i2;
                                                str2 = str4;
                                                z = false;
                                                str = str5;
                                                str5 = str;
                                                i2 = i;
                                                str4 = str2;
                                                z2 = z;
                                                break;
                                            }
                                            str = str5;
                                            i = i2;
                                            z = z2;
                                            str2 = str4;
                                            str5 = str;
                                            i2 = i;
                                            str4 = str2;
                                            z2 = z;
                                        case 5:
                                            String a2 = a(trim);
                                            if (a2 != null) {
                                                if (str4 != null) {
                                                    a2 = str4 + " " + a2;
                                                }
                                                this.d = a2;
                                                i = i2;
                                                z = z2;
                                                str2 = a2;
                                                str = str5;
                                                str5 = str;
                                                i2 = i;
                                                str4 = str2;
                                                z2 = z;
                                                break;
                                            }
                                            str = str5;
                                            i = i2;
                                            z = z2;
                                            str2 = str4;
                                            str5 = str;
                                            i2 = i;
                                            str4 = str2;
                                            z2 = z;
                                        case 6:
                                            if (trim.length() > 2) {
                                                i = i2;
                                                str2 = str4;
                                                z = false;
                                                str = str5;
                                                str5 = str;
                                                i2 = i;
                                                str4 = str2;
                                                z2 = z;
                                                break;
                                            }
                                            str = str5;
                                            i = i2;
                                            z = z2;
                                            str2 = str4;
                                            str5 = str;
                                            i2 = i;
                                            str4 = str2;
                                            z2 = z;
                                        case 7:
                                        case 8:
                                        case 9:
                                        case 10:
                                        case 11:
                                        case 12:
                                        case 16:
                                        case 17:
                                        default:
                                            str = str5;
                                            i = i2;
                                            z = z2;
                                            str2 = str4;
                                            str5 = str;
                                            i2 = i;
                                            str4 = str2;
                                            z2 = z;
                                            break;
                                        case 13:
                                            if (trim.length() > 2) {
                                                i = i2;
                                                str2 = str4;
                                                z = false;
                                                str = str5;
                                                str5 = str;
                                                i2 = i;
                                                str4 = str2;
                                                z2 = z;
                                                break;
                                            }
                                            str = str5;
                                            i = i2;
                                            z = z2;
                                            str2 = str4;
                                            str5 = str;
                                            i2 = i;
                                            str4 = str2;
                                            z2 = z;
                                        case 14:
                                        case 15:
                                            if (i2 == 0) {
                                                String[] split = trim.split("\\s+");
                                                for (int i8 = 0; i8 < split.length; i8++) {
                                                    if (split[i8].equalsIgnoreCase("user") || split[i8].equalsIgnoreCase(BDAccountManager.KEY_UID)) {
                                                        i4 = i8;
                                                    } else if (split[i8].equalsIgnoreCase("ppid")) {
                                                        i6 = i8;
                                                    } else if (split[i8].equalsIgnoreCase("pid")) {
                                                        i7 = i8;
                                                    }
                                                    if (i4 != -1 && i6 != -1 && i7 != -1) {
                                                        i = i2 + 1;
                                                        z = false;
                                                        str2 = str4;
                                                        str = str5;
                                                    }
                                                }
                                                i = i2 + 1;
                                                z = false;
                                                str2 = str4;
                                                str = str5;
                                            } else if (i2 == 1) {
                                                i5 = trim.split("\\s+").length - 1;
                                                i = i2 + 1;
                                                z = z2;
                                                str2 = str4;
                                                str = str5;
                                            } else {
                                                str = null;
                                                if (i5 != -1 && i4 != -1) {
                                                    if (intValue == 15) {
                                                        str = a(trim, i5, i4, i6, i7, strArr);
                                                    } else if (intValue == 14) {
                                                        if (i6 == -1) {
                                                            if (intValue != 15 && intValue != 14) {
                                                                return false;
                                                            }
                                                            this.d = str5;
                                                            return false;
                                                        }
                                                        str = a(trim, i5, i4, i6, i7, i3);
                                                    }
                                                    if (str == null) {
                                                        str = str5;
                                                        str2 = str4;
                                                        z = true;
                                                        i = i2;
                                                    } else if (str5 == null) {
                                                        str2 = str4;
                                                        z = true;
                                                        i = i2;
                                                    } else {
                                                        str = str5 + " " + str;
                                                        str2 = str4;
                                                        z = true;
                                                        i = i2;
                                                    }
                                                }
                                            }
                                            str5 = str;
                                            i2 = i;
                                            str4 = str2;
                                            z2 = z;
                                            break;
                                        case 18:
                                            this.d = trim;
                                            str = str5;
                                            i = i2;
                                            z = z2;
                                            str2 = str4;
                                            str5 = str;
                                            i2 = i;
                                            str4 = str2;
                                            z2 = z;
                                            break;
                                    }
                                }
                            }
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                        this.e = false;
                        if (intValue != 15 && intValue != 14) {
                            return false;
                        }
                        this.d = str5;
                        return false;
                    }
                } catch (Throwable th) {
                    if (intValue == 15 || intValue == 14) {
                        this.d = str5;
                    }
                    throw th;
                }
            }
            if (intValue == 15 || intValue == 14) {
                this.d = str5;
            }
            return Boolean.valueOf(z2);
        } catch (Exception e2) {
            this.e = false;
            return false;
        }
    }

    public Object a() {
        n nVar = (n) this.f3102a;
        if (nVar != null) {
            try {
                if (nVar.d) {
                    nVar.f3109b.write("exit\n");
                    nVar.f3109b.flush();
                }
                nVar.c.close();
                nVar.f3109b.close();
                nVar.f3108a.destroy();
                return true;
            } catch (Exception e) {
            }
        }
        return false;
    }

    public void b() {
        try {
            this.g = false;
            this.g = d();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public Object c() {
        return this.g;
    }
}
