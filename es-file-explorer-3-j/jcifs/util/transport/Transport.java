package jcifs.util.transport;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import jcifs.util.LogStream;

/* loaded from: classes.dex */
public abstract class Transport implements Runnable {
    static int id = 0;
    static LogStream log = LogStream.getInstance();
    String name;
    protected HashMap response_map;
    int state = 0;
    TransportException te;
    Thread thread;

    public Transport() {
        StringBuilder append = new StringBuilder().append("Transport");
        int i = id;
        id = i + 1;
        this.name = append.append(i).toString();
        this.response_map = new HashMap(4);
    }

    private void loop() {
        Request peekKey;
        while (this.thread == Thread.currentThread()) {
            try {
                peekKey = peekKey();
            } catch (Exception e) {
                String message = e.getMessage();
                boolean z = message != null && message.equals("Read timed out");
                boolean z2 = !z;
                if (!z) {
                    LogStream logStream = log;
                    if (LogStream.level >= 3) {
                        e.printStackTrace(log);
                    }
                }
                try {
                    disconnect(z2);
                } catch (IOException e2) {
                    e2.printStackTrace(log);
                }
            }
            if (peekKey == null) {
                throw new IOException("end of stream");
            }
            synchronized (this) {
                Response response = (Response) this.response_map.get(peekKey);
                if (response == null) {
                    LogStream logStream2 = log;
                    if (LogStream.level >= 4) {
                        log.println("Invalid key, skipping message");
                    }
                    doSkip();
                } else {
                    doRecv(response);
                    response.isReceived = true;
                    notifyAll();
                }
            }
        }
    }

    public static int readn(InputStream inputStream, byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int read = inputStream.read(bArr, i + i3, i2 - i3);
            if (read <= 0) {
                break;
            }
            i3 += read;
        }
        return i3;
    }

    public synchronized void connect(long j) {
        try {
            try {
                switch (this.state) {
                    case 0:
                        this.state = 1;
                        this.te = null;
                        this.thread = new Thread(this, this.name);
                        this.thread.setDaemon(true);
                        synchronized (this.thread) {
                            this.thread.start();
                            this.thread.wait(j);
                            switch (this.state) {
                                case 1:
                                    this.state = 0;
                                    this.thread = null;
                                    throw new TransportException("Connection timeout");
                                case 2:
                                    if (this.te == null) {
                                        this.state = 3;
                                        if (this.state != 0 && this.state != 3 && this.state != 4) {
                                            LogStream logStream = log;
                                            if (LogStream.level >= 1) {
                                                log.println("Invalid state: " + this.state);
                                            }
                                            this.state = 0;
                                            this.thread = null;
                                            break;
                                        }
                                    } else {
                                        this.state = 4;
                                        this.thread = null;
                                        throw this.te;
                                    }
                                    break;
                                default:
                                    if (this.state != 0 && this.state != 3 && this.state != 4) {
                                        LogStream logStream2 = log;
                                        if (LogStream.level >= 1) {
                                            log.println("Invalid state: " + this.state);
                                        }
                                        this.state = 0;
                                        this.thread = null;
                                        break;
                                    }
                                    break;
                            }
                        }
                    case 1:
                    case 2:
                    default:
                        TransportException transportException = new TransportException("Invalid state: " + this.state);
                        this.state = 0;
                        throw transportException;
                    case 3:
                        if (this.state != 0 && this.state != 3 && this.state != 4) {
                            LogStream logStream3 = log;
                            if (LogStream.level >= 1) {
                                log.println("Invalid state: " + this.state);
                            }
                            this.state = 0;
                            this.thread = null;
                            break;
                        }
                        break;
                    case 4:
                        this.state = 0;
                        throw new TransportException("Connection in error", this.te);
                }
            } catch (InterruptedException e) {
                this.state = 0;
                this.thread = null;
                throw new TransportException(e);
            }
        } catch (Throwable th) {
            if (this.state != 0 && this.state != 3 && this.state != 4) {
                LogStream logStream4 = log;
                if (LogStream.level >= 1) {
                    log.println("Invalid state: " + this.state);
                }
                this.state = 0;
                this.thread = null;
            }
            throw th;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0005. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0030 A[Catch: all -> 0x0031, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:5:0x0005, B:6:0x0008, B:8:0x000e, B:9:0x0028, B:11:0x0030, B:15:0x0035, B:19:0x003f, B:23:0x0043), top: B:3:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void disconnect(boolean z) {
        IOException e = null;
        synchronized (this) {
            switch (this.state) {
                case 0:
                    break;
                case 1:
                default:
                    LogStream logStream = log;
                    if (LogStream.level >= 1) {
                        log.println("Invalid state: " + this.state);
                    }
                    this.thread = null;
                    this.state = 0;
                    if (e != null) {
                        throw e;
                    }
                    break;
                case 2:
                    z = true;
                case 3:
                    if (this.response_map.size() == 0 || z) {
                        try {
                            doDisconnect(z);
                        } catch (IOException e2) {
                            e = e2;
                        }
                    }
                    if (e != null) {
                    }
                    break;
                case 4:
                    this.thread = null;
                    this.state = 0;
                    if (e != null) {
                    }
                    break;
            }
        }
    }

    protected abstract void doConnect();

    protected abstract void doDisconnect(boolean z);

    protected abstract void doRecv(Response response);

    protected abstract void doSend(Request request);

    protected abstract void doSkip();

    protected abstract void makeKey(Request request);

    protected abstract Request peekKey();

    @Override // java.lang.Runnable
    public void run() {
        Thread currentThread = Thread.currentThread();
        Exception exc = null;
        try {
            doConnect();
            synchronized (currentThread) {
                if (currentThread != this.thread) {
                    if (0 != 0) {
                        LogStream logStream = log;
                        if (LogStream.level >= 2) {
                            exc.printStackTrace(log);
                        }
                    }
                    return;
                }
                if (0 != 0) {
                    this.te = new TransportException((Throwable) null);
                }
                this.state = 2;
                currentThread.notify();
                loop();
            }
        } catch (Exception e) {
            synchronized (currentThread) {
                if (currentThread != this.thread) {
                    if (e != null) {
                        LogStream logStream2 = log;
                        if (LogStream.level >= 2) {
                            e.printStackTrace(log);
                        }
                    }
                    return;
                }
                if (e != null) {
                    this.te = new TransportException(e);
                }
                this.state = 2;
                currentThread.notify();
            }
        } catch (Throwable th) {
            synchronized (currentThread) {
                if (currentThread != this.thread) {
                    if (0 != 0) {
                        LogStream logStream3 = log;
                        if (LogStream.level >= 2) {
                            exc.printStackTrace(log);
                        }
                    }
                    return;
                }
                if (0 != 0) {
                    this.te = new TransportException((Throwable) null);
                }
                this.state = 2;
                currentThread.notify();
                throw th;
            }
        }
    }

    public synchronized void sendrecv(Request request, Response response, long j) {
        makeKey(request);
        response.isReceived = false;
        try {
            try {
                this.response_map.put(request, response);
                doSend(request);
                response.expiration = System.currentTimeMillis() + j;
                while (!response.isReceived) {
                    wait(j);
                    j = response.expiration - System.currentTimeMillis();
                    if (j <= 0) {
                        throw new TransportException(this.name + " timedout waiting for response to " + request);
                    }
                }
            } catch (IOException e) {
                LogStream logStream = log;
                if (LogStream.level > 2) {
                    e.printStackTrace(log);
                }
                try {
                    disconnect(true);
                } catch (IOException e2) {
                    e2.printStackTrace(log);
                }
                throw e;
            } catch (InterruptedException e3) {
                throw new TransportException(e3);
            }
        } finally {
            this.response_map.remove(request);
        }
    }

    public String toString() {
        return this.name;
    }
}
