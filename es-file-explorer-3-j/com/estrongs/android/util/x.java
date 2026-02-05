package com.estrongs.android.util;

import java.io.File;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes.dex */
public class x {
    private String j;
    private final int f = 20000;
    private final int g = 60000;

    /* renamed from: a, reason: collision with root package name */
    public final int f2714a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final int f2715b = 1;
    public int c = 0;
    private final String h = ".tmp";
    private String i = null;
    private String k = null;
    private aa l = null;
    private long m = -1;
    private long n = 0;
    private Object o = null;
    private Thread p = null;
    private boolean q = false;
    public Object d = null;
    public Object e = null;
    private String r = "GET";
    private Object[] s = null;

    public x(String str) {
        this.j = null;
        this.j = str;
    }

    private void j() {
        this.p = new y(this);
        this.p.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:152:0x00cf A[Catch: all -> 0x0264, TRY_LEAVE, TryCatch #1 {all -> 0x0264, blocks: (B:3:0x0002, B:5:0x000e, B:7:0x0012, B:8:0x002d, B:11:0x004b, B:13:0x0053, B:15:0x005d, B:16:0x0083, B:19:0x0088, B:21:0x008d, B:23:0x00e1, B:25:0x0100, B:26:0x0104, B:28:0x010b, B:29:0x0112, B:32:0x011c, B:34:0x0124, B:150:0x00cb, B:152:0x00cf, B:191:0x00c5), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x00dd A[Catch: Exception -> 0x0280, TRY_LEAVE, TryCatch #8 {Exception -> 0x0280, blocks: (B:162:0x00d8, B:155:0x00dd), top: B:161:0x00d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:160:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x00d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x026c A[Catch: Exception -> 0x0270, TRY_LEAVE, TryCatch #0 {Exception -> 0x0270, blocks: (B:172:0x0267, B:167:0x026c), top: B:171:0x0267 }] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0267 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void k() {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        RandomAccessFile randomAccessFile3 = null;
        InputStream inputStream = null;
        try {
            try {
                URL url = new URL(this.j);
                File file = (this.c != 0 || this.k == null) ? null : new File(this.k + ".tmp");
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setConnectTimeout(20000);
                httpURLConnection.setReadTimeout(60000);
                httpURLConnection.setRequestMethod(this.r);
                if (this.c != 0 || file == null || this.n <= 0 || file.length() <= 0) {
                    this.n = 0L;
                } else {
                    this.n = file.length();
                    httpURLConnection.setRequestProperty("Range", "bytes=" + this.n + "-");
                }
                if (this.s != null) {
                    for (int i = 0; i < this.s.length; i += 2) {
                        httpURLConnection.setRequestProperty("" + this.s[i + 0], "" + this.s[i + 1]);
                    }
                }
                httpURLConnection.setRequestProperty("Cache-Control", "no-cache");
                httpURLConnection.setRequestProperty("Pragma", "no-cache");
                httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
                if (this.r.equalsIgnoreCase("POST")) {
                    httpURLConnection.setDoOutput(true);
                }
                httpURLConnection.connect();
                if (this.l != null) {
                    this.l.a(this.o);
                }
                if (this.n == 0 && file != null) {
                    file.delete();
                    file.createNewFile();
                }
                if (file != null) {
                    RandomAccessFile randomAccessFile4 = new RandomAccessFile(file, "rw");
                    try {
                        randomAccessFile4.seek(this.n);
                        randomAccessFile = randomAccessFile4;
                    } catch (Exception e) {
                        e = e;
                        randomAccessFile3 = randomAccessFile4;
                        if (this.l != null) {
                        }
                        if (randomAccessFile3 != null) {
                        }
                        if (inputStream == null) {
                        }
                    } catch (Throwable th) {
                        th = th;
                        randomAccessFile3 = randomAccessFile4;
                        if (randomAccessFile3 != null) {
                        }
                        if (inputStream != null) {
                        }
                        throw th;
                    }
                } else {
                    randomAccessFile = null;
                }
                try {
                    if (this.q) {
                        if (this.l != null) {
                            this.l.a(this.o, new Exception("UserCannelled"));
                        }
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (Exception e2) {
                                return;
                            }
                        }
                        if (0 != 0) {
                            inputStream.close();
                            return;
                        }
                        return;
                    }
                    InputStream inputStream2 = httpURLConnection.getInputStream();
                    try {
                        this.m = httpURLConnection.getContentLength() + this.n;
                        if (this.m < 0 && this.l != null) {
                            this.l.a(this.o, new Exception("error"));
                            if (randomAccessFile != null) {
                                try {
                                    randomAccessFile.close();
                                } catch (Exception e3) {
                                    return;
                                }
                            }
                            if (inputStream2 != null) {
                                inputStream2.close();
                                return;
                            }
                            return;
                        }
                        byte[] bArr = this.c == 1 ? new byte[(int) this.m] : new byte[16384];
                        if (this.l != null) {
                            this.l.a(this.o, this.m, this.n);
                        }
                        int i2 = 0;
                        while (true) {
                            int read = inputStream2.read(bArr, i2, bArr.length - i2);
                            if (read <= 0 || this.n >= this.m || this.q) {
                                break;
                            }
                            if (randomAccessFile != null) {
                                randomAccessFile.write(bArr, 0, read);
                                i2 = 0;
                            } else {
                                i2 += read;
                            }
                            this.n = read + this.n;
                            if (this.l != null) {
                                this.l.a(this.o, this.m, this.n);
                            }
                        }
                        if (this.q) {
                            if (this.l != null) {
                                this.l.a(this.o, new Exception("UserCannelled"));
                            }
                            if (randomAccessFile != null) {
                                try {
                                    randomAccessFile.close();
                                } catch (Exception e4) {
                                    return;
                                }
                            }
                            if (inputStream2 != null) {
                                inputStream2.close();
                                return;
                            }
                            return;
                        }
                        if (httpURLConnection.getResponseCode() >= 300) {
                            if (this.l != null) {
                                this.l.a(this.o, new Exception("error"));
                            }
                            if (randomAccessFile != null) {
                                try {
                                    randomAccessFile.close();
                                } catch (Exception e5) {
                                    return;
                                }
                            }
                            if (inputStream2 != null) {
                                inputStream2.close();
                                return;
                            }
                            return;
                        }
                        if (this.c == 1) {
                            this.i = new String(bArr);
                        }
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                            l();
                            randomAccessFile2 = null;
                        } else {
                            randomAccessFile2 = randomAccessFile;
                        }
                        try {
                            if (this.l != null) {
                                this.l.b(this.o);
                            }
                            if (randomAccessFile2 != null) {
                                try {
                                    randomAccessFile2.close();
                                } catch (Exception e6) {
                                    return;
                                }
                            }
                            if (inputStream2 != null) {
                                inputStream2.close();
                            }
                        } catch (Exception e7) {
                            e = e7;
                            randomAccessFile3 = randomAccessFile2;
                            inputStream = inputStream2;
                            if (this.l != null) {
                                this.l.a(this.o, e);
                            }
                            if (randomAccessFile3 != null) {
                                try {
                                    randomAccessFile3.close();
                                } catch (Exception e8) {
                                    return;
                                }
                            }
                            if (inputStream == null) {
                                inputStream.close();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            randomAccessFile3 = randomAccessFile2;
                            inputStream = inputStream2;
                            if (randomAccessFile3 != null) {
                                try {
                                    randomAccessFile3.close();
                                } catch (Exception e9) {
                                    throw th;
                                }
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            throw th;
                        }
                    } catch (Exception e10) {
                        e = e10;
                        inputStream = inputStream2;
                        randomAccessFile3 = randomAccessFile;
                    } catch (Throwable th3) {
                        th = th3;
                        inputStream = inputStream2;
                        randomAccessFile3 = randomAccessFile;
                    }
                } catch (Exception e11) {
                    e = e11;
                    randomAccessFile3 = randomAccessFile;
                } catch (Throwable th4) {
                    th = th4;
                    randomAccessFile3 = randomAccessFile;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Exception e12) {
            e = e12;
        }
    }

    private void l() {
        try {
            File file = new File(this.k);
            if (file.exists()) {
                file.delete();
            }
            new File(this.k + ".tmp").renameTo(file);
        } catch (Exception e) {
        }
    }

    public long a() {
        return this.n;
    }

    public void a(aa aaVar) {
        this.l = aaVar;
    }

    public void a(Object obj) {
        this.o = obj;
    }

    public void a(String str) {
        try {
            new File(ak.aY(str)).mkdirs();
        } catch (Exception e) {
        }
        this.k = str;
    }

    public void b() {
        this.q = true;
        try {
            this.p.join(1000L);
        } catch (Exception e) {
        }
    }

    public void c() {
        this.n = 0L;
        j();
    }

    public String d() {
        return this.i;
    }

    public String e() {
        return this.k;
    }

    public void f() {
        if (this.n == 0) {
            this.n = new File(this.k + ".tmp").length();
        }
        this.p = new z(this);
        this.p.start();
    }

    public long g() {
        return this.m;
    }

    public void h() {
        new File(this.k).delete();
    }

    public boolean i() {
        return this.q;
    }
}
