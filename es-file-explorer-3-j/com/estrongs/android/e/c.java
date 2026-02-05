package com.estrongs.android.e;

import android.content.Context;
import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.ak;
import com.estrongs.fs.impl.local.h;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class c {
    public static LocalSocket a() {
        return a(true);
    }

    private static synchronized LocalSocket a(boolean z) {
        LocalSocket localSocket = null;
        synchronized (c.class) {
            String d = h.d();
            String str = ak.aY(ak.aY(d)) + "files/comm/tool_port";
            LocalSocketAddress localSocketAddress = new LocalSocketAddress(str, LocalSocketAddress.Namespace.ABSTRACT);
            LocalSocket localSocket2 = new LocalSocket();
            try {
                localSocket2.connect(localSocketAddress);
            } catch (Exception e) {
                localSocket2 = null;
            }
            if (localSocket2 != null) {
                try {
                    OutputStream outputStream = localSocket2.getOutputStream();
                    InputStream inputStream = localSocket2.getInputStream();
                    h.a(outputStream, 80);
                    if (h.c(inputStream) != 17) {
                        try {
                            localSocket2.close();
                            LocalSocket localSocket3 = new LocalSocket();
                            localSocket3.connect(localSocketAddress);
                            h.a(localSocket3.getOutputStream(), 100);
                            localSocket3.close();
                        } catch (Exception e2) {
                        }
                        if (h.a((Context) FexApplication.f325a) && z) {
                            a(d, str);
                            localSocket = a(false);
                        }
                    } else {
                        localSocket = localSocket2;
                    }
                } catch (Exception e3) {
                }
            } else if (z) {
                try {
                    if (!h.f() || h.a((Context) FexApplication.f325a)) {
                        a(d, str);
                        localSocket = a(false);
                    }
                } catch (Exception e4) {
                }
            }
        }
        return localSocket;
    }

    public static a a(String str) {
        OutputStream outputStream;
        InputStream inputStream;
        OutputStream outputStream2;
        InputStream inputStream2;
        LocalSocket a2 = a();
        if (a2 == null) {
            return null;
        }
        try {
            inputStream = a2.getInputStream();
            try {
                outputStream = a2.getOutputStream();
                try {
                    h.a(outputStream, 10001);
                    h.a(outputStream, str);
                    if (h.c(inputStream) == 0) {
                        a aVar = new a(a2, h.c(inputStream), h.c(inputStream));
                        aVar.f288a = str;
                        aVar.d = h.c(inputStream);
                        return aVar;
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                            return null;
                        }
                    }
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    a2.close();
                    return null;
                } catch (IOException e2) {
                    outputStream2 = outputStream;
                    inputStream2 = inputStream;
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException e3) {
                            return null;
                        }
                    }
                    if (outputStream2 != null) {
                        outputStream2.close();
                    }
                    a2.close();
                    return null;
                } catch (Throwable th) {
                    th = th;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e4) {
                            return null;
                        }
                    }
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    a2.close();
                    throw th;
                }
            } catch (IOException e5) {
                outputStream2 = null;
                inputStream2 = inputStream;
            } catch (Throwable th2) {
                th = th2;
                outputStream = null;
            }
        } catch (IOException e6) {
            outputStream2 = null;
            inputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            outputStream = null;
            inputStream = null;
        }
    }

    private static void a(String str, String str2) {
        ProcessBuilder processBuilder = new ProcessBuilder(str, "39623", str2);
        processBuilder.redirectErrorStream(true);
        try {
            processBuilder.directory(new File(ak.aY(str)));
        } catch (Exception e) {
        }
        try {
            processBuilder.start();
            Thread.sleep(2000L);
        } catch (Exception e2) {
        }
    }

    public static boolean a(LocalSocket localSocket, String str) {
        if (localSocket == null) {
            throw new IOException("Failed to connect estools");
        }
        OutputStream outputStream = localSocket.getOutputStream();
        InputStream inputStream = localSocket.getInputStream();
        h.a(outputStream, 205);
        h.a(outputStream, str);
        if (h.c(inputStream) < 0) {
            throw new IOException("File IO errors");
        }
        return h.c(inputStream) != 0;
    }
}
