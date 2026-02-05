package com.estrongs.android.e;

import android.graphics.Bitmap;
import android.net.LocalSocket;
import android.util.Log;
import com.estrongs.fs.impl.local.h;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class a {

    /* renamed from: b, reason: collision with root package name */
    public int f289b;
    public int c;
    private LocalSocket e;
    private byte[] f;

    /* renamed from: a, reason: collision with root package name */
    public String f288a = null;
    public int d = 0;

    public a(LocalSocket localSocket, int i, int i2) {
        this.e = null;
        this.f289b = 0;
        this.c = 0;
        this.f = null;
        this.e = localSocket;
        this.f289b = i;
        this.c = i2;
        this.f = new byte[this.f289b * this.c * 4];
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x00db A[Catch: IOException -> 0x00e4, TryCatch #5 {IOException -> 0x00e4, blocks: (B:86:0x00d6, B:78:0x00db, B:79:0x00de), top: B:85:0x00d6 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public b a(Bitmap bitmap) {
        OutputStream outputStream;
        InputStream inputStream;
        OutputStream outputStream2;
        InputStream inputStream2;
        try {
            inputStream = this.e.getInputStream();
            try {
                outputStream = this.e.getOutputStream();
            } catch (IOException e) {
                e = e;
                outputStream2 = null;
                inputStream2 = inputStream;
            } catch (Throwable th) {
                th = th;
                outputStream = null;
            }
        } catch (IOException e2) {
            e = e2;
            outputStream2 = null;
            inputStream2 = null;
        } catch (Throwable th2) {
            th = th2;
            outputStream = null;
            inputStream = null;
        }
        try {
            h.a(outputStream, 255);
            int c = h.c(inputStream);
            if (c != 0) {
                Log.e("EEE", "get response failed:" + c);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                        return null;
                    }
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                this.e.close();
                return null;
            }
            b bVar = new b();
            bVar.f291b = h.c(inputStream) * 10;
            if (bVar.f291b == 0) {
                bVar.f291b = 100;
            }
            bVar.f290a = null;
            int i = 0;
            while (i < this.f.length) {
                int read = inputStream.read(this.f, i, this.f.length - i);
                if (read == -1) {
                    Log.e("EEE", "read error");
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                            return null;
                        }
                    }
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    this.e.close();
                    return null;
                }
                i += read;
            }
            ByteBuffer wrap = ByteBuffer.wrap(this.f);
            try {
                if (bitmap != null) {
                    bitmap.copyPixelsFromBuffer(wrap);
                    bVar.f290a = bitmap;
                } else {
                    bVar.f290a = Bitmap.createBitmap(this.f289b, this.c, Bitmap.Config.ARGB_8888);
                    bVar.f290a.copyPixelsFromBuffer(wrap);
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            return bVar;
        } catch (IOException e6) {
            e = e6;
            outputStream2 = outputStream;
            inputStream2 = inputStream;
            try {
                e.printStackTrace();
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (IOException e7) {
                        e7.printStackTrace();
                        return null;
                    }
                }
                if (outputStream2 != null) {
                    outputStream2.close();
                }
                this.e.close();
                return null;
            } catch (Throwable th3) {
                th = th3;
                inputStream = inputStream2;
                outputStream = outputStream2;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e8) {
                        e8.printStackTrace();
                        return null;
                    }
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                this.e.close();
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            if (inputStream != null) {
            }
            if (outputStream != null) {
            }
            this.e.close();
            throw th;
        }
    }

    public void a() {
        try {
            this.e.close();
        } catch (Exception e) {
        }
        this.f = null;
    }
}
