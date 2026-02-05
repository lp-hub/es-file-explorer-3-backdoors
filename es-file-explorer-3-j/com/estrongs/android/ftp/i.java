package com.estrongs.android.ftp;

import java.io.BufferedOutputStream;
import java.io.File;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class i extends Thread {
    public int c;
    final /* synthetic */ h h;

    /* renamed from: a, reason: collision with root package name */
    public ServerSocket f318a = null;

    /* renamed from: b, reason: collision with root package name */
    public InetAddress f319b = null;
    public int d = 0;
    public Object e = null;
    public boolean f = false;
    public Lock g = new ReentrantLock();

    public i(h hVar) {
        this.h = hVar;
    }

    public void a() {
        try {
            if (this.f318a != null) {
                this.f318a.close();
            }
            this.g.unlock();
        } catch (Exception e) {
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Integer num;
        Integer num2;
        Socket socket;
        Integer num3;
        Integer num4;
        Integer num5;
        Integer num6;
        boolean z;
        Integer num7;
        Integer num8;
        Integer num9;
        Integer num10;
        Integer num11;
        Integer num12;
        Integer num13;
        Integer num14;
        Integer num15;
        Integer num16;
        Integer num17;
        Integer num18;
        Integer num19;
        Integer num20;
        Integer num21;
        Integer num22;
        Integer num23;
        Integer num24;
        Integer num25;
        Integer num26;
        Socket socket2 = null;
        num = this.h.k;
        synchronized (num) {
            num2 = this.h.k;
            if (num2.intValue() == 0) {
                this.h.k = Integer.valueOf(hashCode());
                this.h.l = this;
            }
            try {
            } finally {
                try {
                    this.f318a.close();
                } catch (Exception e) {
                }
            }
        }
        try {
            socket = this.f318a != null ? this.f318a.accept() : null;
        } catch (Exception e2) {
            e2.printStackTrace();
            try {
                this.f318a.close();
                socket = null;
            } catch (Exception e3) {
                socket = null;
            }
        }
        try {
            this.g.lock();
            this.g.unlock();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (this.f || this.d == 0) {
            num3 = this.h.k;
            synchronized (num3) {
                num4 = this.h.k;
                if (num4.intValue() == hashCode()) {
                    this.h.k = 0;
                    this.h.l = null;
                }
            }
            if (this.f) {
                this.h.b("226 ABOR succ.\r\n");
                return;
            }
            return;
        }
        if (socket == null) {
            try {
                if (this.f319b != null && this.c != 0) {
                    socket = new Socket(this.f319b, this.c);
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
        socket2 = socket;
        if (socket2 == null) {
            num25 = this.h.k;
            synchronized (num25) {
                num26 = this.h.k;
                if (num26.intValue() == hashCode()) {
                    this.h.k = 0;
                    this.h.l = null;
                }
            }
            this.h.b("425 Cannot open data connection.\r\n");
            return;
        }
        try {
            try {
            } catch (Exception e6) {
                e = e6;
                z = false;
            }
            try {
                if (this.d == 1 || this.d == 2 || this.d == 3 || this.d == 4) {
                    String str = (String) this.e;
                    if (str == null) {
                        this.h.b("501 Can't list target dir.\r\n");
                        if (socket2 != null) {
                            try {
                                socket2.close();
                            } catch (Exception e7) {
                            }
                        }
                        num13 = this.h.k;
                        synchronized (num13) {
                            num14 = this.h.k;
                            if (num14.intValue() == hashCode()) {
                                this.h.k = 0;
                                this.h.l = null;
                            }
                        }
                        if (this.f) {
                            this.h.b("226 ABOR succ.\r\n");
                            return;
                        }
                        return;
                    }
                    File file = new File(str);
                    System.out.println("List dir:" + str);
                    if (this.d != 4 && !file.exists()) {
                        this.h.b("501 Can't list target dir.\r\n");
                        if (socket2 != null) {
                            try {
                                socket2.close();
                            } catch (Exception e8) {
                            }
                        }
                        num11 = this.h.k;
                        synchronized (num11) {
                            num12 = this.h.k;
                            if (num12.intValue() == hashCode()) {
                                this.h.k = 0;
                                this.h.l = null;
                            }
                        }
                        if (this.f) {
                            this.h.b("226 ABOR succ.\r\n");
                            return;
                        }
                        return;
                    }
                    this.h.b("150 Opening data connection for list.\r\n");
                    StringBuilder sb = new StringBuilder();
                    if (file.isDirectory()) {
                        for (File file2 : file.listFiles()) {
                            if (this.f) {
                                if (socket2 != null) {
                                    try {
                                        socket2.close();
                                    } catch (Exception e9) {
                                    }
                                }
                                num9 = this.h.k;
                                synchronized (num9) {
                                    num10 = this.h.k;
                                    if (num10.intValue() == hashCode()) {
                                        this.h.k = 0;
                                        this.h.l = null;
                                    }
                                }
                                if (this.f) {
                                    this.h.b("226 ABOR succ.\r\n");
                                    return;
                                }
                                return;
                            }
                            String a2 = this.h.a(this.d, file2);
                            if (a2 != null) {
                                sb.append(a2);
                            }
                        }
                    } else {
                        String a3 = this.h.a(this.d, file);
                        if (a3 != null) {
                            sb.append(a3);
                        }
                    }
                    this.h.a(new BufferedOutputStream(socket2.getOutputStream()), sb.toString());
                    this.h.b("226 Transfer complete.\r\n");
                } else if (this.d == 5) {
                    j jVar = (j) this.e;
                    File file3 = new File(jVar.f321b);
                    if (!file3.exists() || file3.isDirectory()) {
                        this.h.b("501 target is dir.\r\n");
                        if (socket2 != null) {
                            try {
                                socket2.close();
                            } catch (Exception e10) {
                            }
                        }
                        num21 = this.h.k;
                        synchronized (num21) {
                            num22 = this.h.k;
                            if (num22.intValue() == hashCode()) {
                                this.h.k = 0;
                                this.h.l = null;
                            }
                        }
                        if (this.f) {
                            this.h.b("226 ABOR succ.\r\n");
                            return;
                        }
                        return;
                    }
                    this.h.b("150 Opening data connection for file.\r\n");
                    this.h.a(this, file3, socket2, false, jVar.f320a);
                    if (this.f) {
                        if (socket2 != null) {
                            try {
                                socket2.close();
                            } catch (Exception e11) {
                            }
                        }
                        num23 = this.h.k;
                        synchronized (num23) {
                            num24 = this.h.k;
                            if (num24.intValue() == hashCode()) {
                                this.h.k = 0;
                                this.h.l = null;
                            }
                        }
                        if (this.f) {
                            this.h.b("226 ABOR succ.\r\n");
                            return;
                        }
                        return;
                    }
                    this.h.b("226 Transfer complete.\r\n");
                } else if (this.d == 6 || this.d == 7) {
                    j jVar2 = (j) this.e;
                    File file4 = new File(jVar2.f321b);
                    if (file4.isDirectory()) {
                        this.h.b("501 target is directory.\r\n");
                        if (socket2 != null) {
                            try {
                                socket2.close();
                            } catch (Exception e12) {
                            }
                        }
                        num19 = this.h.k;
                        synchronized (num19) {
                            num20 = this.h.k;
                            if (num20.intValue() == hashCode()) {
                                this.h.k = 0;
                                this.h.l = null;
                            }
                        }
                        if (this.f) {
                            this.h.b("226 ABOR succ.\r\n");
                            return;
                        }
                        return;
                    }
                    if (file4.exists() && this.d == 6 && jVar2.f320a == 0) {
                        file4.delete();
                    }
                    this.h.b("150 Opening data connection for file.\r\n");
                    if (this.f) {
                        if (socket2 != null) {
                            try {
                                socket2.close();
                            } catch (Exception e13) {
                            }
                        }
                        num17 = this.h.k;
                        synchronized (num17) {
                            num18 = this.h.k;
                            if (num18.intValue() == hashCode()) {
                                this.h.k = 0;
                                this.h.l = null;
                            }
                        }
                        if (this.f) {
                            this.h.b("226 ABOR succ.\r\n");
                            return;
                        }
                        return;
                    }
                    this.h.a(this, file4, socket2, true, jVar2.f320a);
                    this.h.b("226 Transfer complete.\r\n");
                }
                if (socket2 != null) {
                    try {
                        socket2.close();
                    } catch (Exception e14) {
                    }
                }
                num15 = this.h.k;
                synchronized (num15) {
                    num16 = this.h.k;
                    if (num16.intValue() == hashCode()) {
                        this.h.k = 0;
                        this.h.l = null;
                    }
                }
                if (this.f) {
                    this.h.b("226 ABOR succ.\r\n");
                }
            } catch (Exception e15) {
                e = e15;
                z = true;
                e.printStackTrace();
                if (z) {
                    this.h.b("426 Data connection unexpectedly closed.\r\n");
                }
                if (socket2 != null) {
                    try {
                        socket2.close();
                    } catch (Exception e16) {
                    }
                }
                num7 = this.h.k;
                synchronized (num7) {
                    num8 = this.h.k;
                    if (num8.intValue() == hashCode()) {
                        this.h.k = 0;
                        this.h.l = null;
                    }
                }
                if (this.f) {
                    this.h.b("226 ABOR succ.\r\n");
                }
            }
        } catch (Throwable th) {
            if (socket2 != null) {
                try {
                    socket2.close();
                } catch (Exception e17) {
                }
            }
            num5 = this.h.k;
            synchronized (num5) {
                num6 = this.h.k;
                if (num6.intValue() == hashCode()) {
                    this.h.k = 0;
                    this.h.l = null;
                }
                if (!this.f) {
                    throw th;
                }
                this.h.b("226 ABOR succ.\r\n");
                throw th;
            }
        }
    }
}
