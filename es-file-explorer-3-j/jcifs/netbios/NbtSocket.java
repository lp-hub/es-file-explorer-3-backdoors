package jcifs.netbios;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import jcifs.Config;
import jcifs.util.LogStream;

/* loaded from: classes.dex */
public class NbtSocket extends Socket {
    private static final int BUFFER_SIZE = 512;
    private static final int DEFAULT_SO_TIMEOUT = 5000;
    private static final int SSN_SRVC_PORT = 139;
    private static LogStream log = LogStream.getInstance();
    private NbtAddress address;
    private Name calledName;
    private int soTimeout;

    public NbtSocket() {
    }

    public NbtSocket(NbtAddress nbtAddress, int i) {
        this(nbtAddress, i, null, 0);
    }

    public NbtSocket(NbtAddress nbtAddress, int i, InetAddress inetAddress, int i2) {
        this(nbtAddress, null, i, inetAddress, i2);
    }

    public NbtSocket(NbtAddress nbtAddress, String str, int i, InetAddress inetAddress, int i2) {
        super(nbtAddress.getInetAddress(), i == 0 ? SSN_SRVC_PORT : i, inetAddress, i2);
        this.address = nbtAddress;
        if (str == null) {
            this.calledName = nbtAddress.hostName;
        } else {
            this.calledName = new Name(str, 32, null);
        }
        this.soTimeout = Config.getInt("jcifs.netbios.soTimeout", DEFAULT_SO_TIMEOUT);
        connect();
    }

    private void connect() {
        byte[] bArr = new byte[512];
        try {
            InputStream inputStream = super.getInputStream();
            super.getOutputStream().write(bArr, 0, new SessionRequestPacket(this.calledName, NbtAddress.localhost.hostName).writeWireFormat(bArr, 0));
            setSoTimeout(this.soTimeout);
            switch (SessionServicePacket.readPacketType(inputStream, bArr, 0)) {
                case -1:
                    throw new NbtException(2, -1);
                case 130:
                    LogStream logStream = log;
                    if (LogStream.level > 2) {
                        log.println("session established ok with " + this.address);
                        return;
                    }
                    return;
                case 131:
                    int read = inputStream.read() & 255;
                    close();
                    throw new NbtException(2, read);
                default:
                    close();
                    throw new NbtException(2, 0);
            }
        } catch (IOException e) {
            close();
            throw e;
        }
    }

    @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        LogStream logStream = log;
        if (LogStream.level > 3) {
            log.println("close: " + this);
        }
        super.close();
    }

    @Override // java.net.Socket
    public InputStream getInputStream() {
        return new SocketInputStream(super.getInputStream());
    }

    @Override // java.net.Socket
    public InetAddress getLocalAddress() {
        return super.getLocalAddress();
    }

    @Override // java.net.Socket
    public int getLocalPort() {
        return super.getLocalPort();
    }

    public NbtAddress getNbtAddress() {
        return this.address;
    }

    @Override // java.net.Socket
    public OutputStream getOutputStream() {
        return new SocketOutputStream(super.getOutputStream());
    }

    @Override // java.net.Socket
    public int getPort() {
        return super.getPort();
    }

    @Override // java.net.Socket
    public String toString() {
        return "NbtSocket[addr=" + this.address + ",port=" + super.getPort() + ",localport=" + super.getLocalPort() + "]";
    }
}
