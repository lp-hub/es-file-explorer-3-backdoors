package com.estrongs.android.pop.netfs.utils;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.PipedOutputStream;

/* loaded from: classes.dex */
public class UploadOutputStream extends PipedOutputStream {
    private Thread task = null;
    private InputStream in = null;
    private boolean succ = false;
    private String errorMessage = null;

    @Override // java.io.PipedOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.task != null) {
            try {
                if (this.in != null) {
                    int i = 0;
                    while (this.task.isAlive() && this.in.available() > 0 && i < 30) {
                        try {
                            Log.e("EEE", "close before sleep 1s");
                            Thread.sleep(1000L);
                            i++;
                        } catch (Exception e) {
                        }
                    }
                    super.close();
                }
                this.task.join();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (this.succ) {
        } else {
            throw new IOException(this.errorMessage == null ? "" : this.errorMessage);
        }
    }

    public void forceClose() {
        if (this.task != null) {
            try {
                if (this.in != null) {
                    this.in.close();
                }
                this.task.interrupt();
            } catch (IOException e) {
            }
        }
        this.task = null;
    }

    public void setErrorMessage(String str) {
        this.errorMessage = str;
    }

    public void setResult(boolean z) {
        this.succ = z;
    }

    public void setTask(Thread thread, InputStream inputStream) {
        this.task = thread;
        this.in = inputStream;
    }
}
