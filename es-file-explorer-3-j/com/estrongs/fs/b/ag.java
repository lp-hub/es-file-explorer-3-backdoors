package com.estrongs.fs.b;

import android.content.Context;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Properties;
import org.apache.commons.net.SocketClient;

/* loaded from: classes.dex */
public class ag extends com.estrongs.a.a {

    /* renamed from: a, reason: collision with root package name */
    Context f2970a;

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.fs.g f2971b;
    private String c;

    ag(Context context, com.estrongs.fs.g gVar, String str) {
        this.f2970a = context;
        this.f2971b = gVar;
        this.c = str;
        this.c = this.c.substring(0, this.c.indexOf(58));
        this.canRestart = false;
        this.canPause = false;
        this.task_type = 5;
    }

    public static ag a(Context context, com.estrongs.fs.g gVar, String str) {
        ag agVar = new ag(context, gVar, str);
        if (!com.estrongs.android.c.a.b()) {
            return null;
        }
        agVar.execute();
        return agVar;
    }

    public static void a() {
        com.estrongs.android.c.g.j();
    }

    @Override // com.estrongs.a.a
    public void handleMessage(int i, Object... objArr) {
        switch (i) {
            case 2:
                this.processData.f = ((Long) objArr[0]).longValue();
                this.processData.f196a = (String) objArr[1];
                this.processData.e = ((Long) objArr[2]).longValue();
                onProgress(this.processData);
                return;
            default:
                super.handleMessage(i, objArr);
                return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.estrongs.a.a
    public boolean task() {
        Socket socket;
        com.estrongs.android.c.g.c(this.c);
        this.processData.f196a = "Playing media file for " + this.c;
        onProgress(this.processData);
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        try {
            InetAddress byName = InetAddress.getByName(this.c);
            socket = new Socket();
            try {
                socket.connect(new InetSocketAddress(byName, com.estrongs.a.b.d.f201a), 10000);
                socket.setSoTimeout(10000);
                if (!socket.isConnected()) {
                    throw new Exception("connect timeout!");
                }
                DataInputStream dataInputStream = new DataInputStream(socket.getInputStream());
                DataOutputStream dataOutputStream = new DataOutputStream(socket.getOutputStream());
                byte[] a2 = ae.a(this.f2970a);
                dataOutputStream.write(("MYPOST " + this.f2971b.getAbsolutePath() + " HTTP/1.1\r\nConnection: Keep-Alive\r\nContent-Type: media/realtime\r\nContent-Length: " + this.f2971b.length() + SocketClient.NETASCII_EOL + "User-Agent: Dalvik\r\nHost: " + (a2[0] >= 0 ? a2[0] : a2[0] + 256) + "." + (a2[1] >= 0 ? a2[1] : a2[1] + 256) + "." + (a2[2] >= 0 ? a2[2] : a2[2] + 256) + "." + (a2[3] >= 0 ? a2[3] : a2[3] + 256) + ":" + com.estrongs.android.c.a.a() + SocketClient.NETASCII_EOL + SocketClient.NETASCII_EOL).getBytes("utf-8"));
                while (dataInputStream.available() == 0) {
                    Thread.sleep(200L);
                    if (currentTask != null && currentTask.taskStopped()) {
                        setTaskResult(10000, new com.estrongs.a.q("You canceled transfering.", (Exception) null));
                        socket.close();
                        com.estrongs.android.c.g.d(this.c);
                        return false;
                    }
                }
                Properties properties = new Properties();
                String str = "";
                while (true) {
                    String readLine = dataInputStream.readLine();
                    if (readLine.length() == 0) {
                        break;
                    }
                    str = str + readLine + "\r\n'";
                    int indexOf = readLine.indexOf(58);
                    if (indexOf >= 0) {
                        properties.put(readLine.substring(0, indexOf).trim().toLowerCase(), readLine.substring(indexOf + 1).trim());
                    }
                }
                System.out.print(str);
                byte[] bArr = new byte[Integer.parseInt(properties.getProperty("content-length"))];
                dataInputStream.read(bArr);
                if (new String(bArr).equals("OK")) {
                    try {
                        socket.close();
                    } catch (Exception e) {
                    }
                    return true;
                }
                setTaskResult(10000, new com.estrongs.a.q("Receiver rejected.", (Exception) null));
                socket.close();
                com.estrongs.android.c.g.d(this.c);
                return false;
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                setTaskResult(10000, new com.estrongs.a.q("Connection closed.", e));
                try {
                    socket.close();
                } catch (Exception e3) {
                }
                com.estrongs.android.c.g.d(this.c);
                return false;
            }
        } catch (Exception e4) {
            e = e4;
            socket = null;
        }
    }
}
