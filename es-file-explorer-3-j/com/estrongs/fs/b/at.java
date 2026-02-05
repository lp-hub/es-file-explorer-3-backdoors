package com.estrongs.fs.b;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.ew;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.List;
import java.util.Properties;
import org.apache.commons.net.SocketClient;

/* loaded from: classes.dex */
public class at extends com.estrongs.a.a {

    /* renamed from: a, reason: collision with root package name */
    Activity f2986a;

    /* renamed from: b, reason: collision with root package name */
    com.estrongs.fs.d f2987b;
    private List<com.estrongs.fs.g> d;
    private String e;
    Long c = 0L;
    private com.estrongs.a.a.k f = new au(this);

    at(Activity activity, List<com.estrongs.fs.g> list, String str) {
        this.f2986a = activity;
        this.f2987b = com.estrongs.fs.d.a(activity);
        this.d = list;
        this.e = str;
        this.e = this.e.substring(0, this.e.indexOf(58));
        this.canRestart = false;
        this.canPause = false;
        this.task_type = 21;
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            String name = list.get(i).getName();
            sb.append(name == null ? com.estrongs.android.util.ak.d(list.get(i).getAbsolutePath()) : name);
            if (i + 1 != size) {
                sb.append(" , ");
                if (i >= 4) {
                    sb.append("...");
                    break;
                }
            }
            i++;
        }
        this.processData.j = sb.toString();
        d();
        setDescription(this.f2986a.getString(C0000R.string.transfering_to) + this.e);
    }

    public static at a(Activity activity, List<com.estrongs.fs.g> list, String str, boolean z) {
        if (FileExplorerActivity.E() == null) {
            return null;
        }
        at atVar = new at(activity, list, str);
        if (z) {
            new ew(FileExplorerActivity.E(), activity.getString(C0000R.string.progress_transferring), atVar).show();
            atVar.execute();
            return atVar;
        }
        atVar.addTaskStatusChangeListener(atVar.f);
        atVar.execute();
        return atVar;
    }

    private void d() {
        com.estrongs.fs.g gVar = this.d.get(0);
        String str = "";
        int size = this.d.size();
        int i = 0;
        while (i < 3 && i != size) {
            String str2 = str + this.d.get(i).getName() + ",";
            i++;
            str = str2;
        }
        if (str.endsWith(",")) {
            str = str.substring(0, str.length() - 1);
        }
        recordSummary("title", str);
        recordSummary("items_ori_count", Integer.valueOf(size));
        recordSummary("task_id", Long.valueOf(getTaskId()));
        recordSummary("task_type", Integer.valueOf(this.task_type));
        recordSummary("restartable", false);
        recordSummary("items_selected_count", Integer.valueOf(this.d.size()));
        recordSummary("source", this.d.get(0).getAbsolutePath());
        recordSummary("target", this.e);
        if (gVar.getFileType().a()) {
            recordSummary("file_type", gVar.getFileType().c());
        } else {
            recordSummary("file_type", Integer.valueOf(com.estrongs.android.util.av.a(gVar.getName())));
        }
        if (this.startTime == -1) {
            this.startTime = System.currentTimeMillis();
        }
        recordSummary("start_time", Long.valueOf(this.startTime));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a() {
        return getDescription() + " successfully.";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(com.estrongs.a.p pVar) {
        if (pVar == null || pVar.f230b == null) {
            return null;
        }
        return ((com.estrongs.a.q) pVar.f230b).f231a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object b(com.estrongs.a.p pVar) {
        if (pVar == null || pVar.f230b == null) {
            return -1;
        }
        return ((com.estrongs.a.q) pVar.f230b).f232b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String b() {
        return getDescription() + " cancelled.";
    }

    public List<com.estrongs.fs.g> c() {
        return this.d;
    }

    @Override // com.estrongs.a.a
    public void handleMessage(int i, Object... objArr) {
        switch (i) {
            case 2:
                this.processData.f = ((Long) objArr[0]).longValue();
                this.processData.f196a = (String) objArr[1];
                this.processData.e = ((Long) objArr[2]).longValue();
                if (hasProgressListener()) {
                    Long valueOf = Long.valueOf(System.currentTimeMillis());
                    this.processData.f197b = (int) (((float) this.processData.f) / ((valueOf.longValue() - this.c.longValue()) / 1000.0d));
                    onProgress(this.processData);
                    return;
                }
                return;
            case 9:
                this.processData.g = ((Long) objArr[0]).longValue();
                this.processData.h = ((Long) objArr[1]).longValue();
                return;
            default:
                super.handleMessage(i, objArr);
                return;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x0449, code lost:
    
        r21.write("File end\r\n".getBytes());
        r21.flush();
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0384, code lost:
    
        r21.write("OVER\r\n".getBytes());
        r21.flush();
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01e5 A[Catch: Exception -> 0x0116, TryCatch #6 {Exception -> 0x0116, blocks: (B:26:0x00fa, B:28:0x010e, B:29:0x0115, B:30:0x0139, B:33:0x0163, B:35:0x01e5, B:37:0x01ea, B:39:0x01f0, B:42:0x01f7, B:45:0x01fd, B:51:0x02df, B:52:0x02e6, B:62:0x02f0, B:64:0x030e, B:54:0x032c, B:57:0x034b, B:123:0x0203, B:125:0x02d1), top: B:25:0x00fa }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01f0 A[Catch: Exception -> 0x0116, TryCatch #6 {Exception -> 0x0116, blocks: (B:26:0x00fa, B:28:0x010e, B:29:0x0115, B:30:0x0139, B:33:0x0163, B:35:0x01e5, B:37:0x01ea, B:39:0x01f0, B:42:0x01f7, B:45:0x01fd, B:51:0x02df, B:52:0x02e6, B:62:0x02f0, B:64:0x030e, B:54:0x032c, B:57:0x034b, B:123:0x0203, B:125:0x02d1), top: B:25:0x00fa }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x032c A[Catch: Exception -> 0x0116, TryCatch #6 {Exception -> 0x0116, blocks: (B:26:0x00fa, B:28:0x010e, B:29:0x0115, B:30:0x0139, B:33:0x0163, B:35:0x01e5, B:37:0x01ea, B:39:0x01f0, B:42:0x01f7, B:45:0x01fd, B:51:0x02df, B:52:0x02e6, B:62:0x02f0, B:64:0x030e, B:54:0x032c, B:57:0x034b, B:123:0x0203, B:125:0x02d1), top: B:25:0x00fa }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02f0 A[EDGE_INSN: B:61:0x02f0->B:62:0x02f0 BREAK  A[LOOP:2: B:52:0x02e6->B:59:0x02e6], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x030e A[Catch: Exception -> 0x0116, TryCatch #6 {Exception -> 0x0116, blocks: (B:26:0x00fa, B:28:0x010e, B:29:0x0115, B:30:0x0139, B:33:0x0163, B:35:0x01e5, B:37:0x01ea, B:39:0x01f0, B:42:0x01f7, B:45:0x01fd, B:51:0x02df, B:52:0x02e6, B:62:0x02f0, B:64:0x030e, B:54:0x032c, B:57:0x034b, B:123:0x0203, B:125:0x02d1), top: B:25:0x00fa }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0366  */
    @Override // com.estrongs.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean task() {
        Socket socket;
        com.estrongs.fs.g gVar;
        int length;
        InetAddress byName;
        Socket socket2;
        byte[] bArr;
        String str;
        String readLine;
        byte[] bArr2;
        long j;
        this.processData.c = 0L;
        this.processData.d = 0L;
        this.processData.f196a = this.f2986a.getString(C0000R.string.waiting_connection_with) + this.e;
        onProgress(this.processData);
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        com.estrongs.a.b.c cVar = new com.estrongs.a.b.c(this.d);
        long j2 = 0;
        while (true) {
            if (currentTask != null && currentTask.taskStopped()) {
                return false;
            }
            com.estrongs.fs.g a2 = cVar.a();
            if (a2 == null) {
                this.processData.e = j2;
                this.processData.j = this.d.get(0).getName();
                if (this.d.size() > 1) {
                    StringBuilder sb = new StringBuilder();
                    com.estrongs.a.a.i iVar = this.processData;
                    iVar.j = sb.append(iVar.j).append("...").toString();
                }
                onProgress(this.processData);
                recordSummary("size", Long.valueOf(j2));
                try {
                    gVar = this.d.get(0);
                    length = gVar.getAbsolutePath().length() - gVar.getName().length();
                    byName = InetAddress.getByName(this.e);
                    socket2 = new Socket();
                } catch (Exception e) {
                    e = e;
                    socket = null;
                }
                try {
                    socket2.connect(new InetSocketAddress(byName, com.estrongs.a.b.d.f201a), 10000);
                    if (!socket2.isConnected()) {
                        throw new Exception("connect timeout!");
                    }
                    DataInputStream dataInputStream = new DataInputStream(socket2.getInputStream());
                    DataOutputStream dataOutputStream = new DataOutputStream(socket2.getOutputStream());
                    byte[] bArr3 = null;
                    String name = gVar.getName();
                    if (this.d.size() > 1) {
                        str = "Content-Type: application/files\r\n";
                    } else if (com.estrongs.android.util.av.b(gVar)) {
                        try {
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inJustDecodeBounds = true;
                            BitmapFactory.decodeFile(gVar.getAbsolutePath(), options);
                            int i = options.outWidth;
                            int i2 = options.outHeight;
                            options.outWidth = 64;
                            options.outHeight = (i2 * i) / i;
                            options.inJustDecodeBounds = false;
                            options.inPurgeable = !com.estrongs.android.pop.m.s;
                            options.inInputShareable = true;
                            options.inSampleSize = i / 64;
                            Bitmap decodeFile = BitmapFactory.decodeFile(gVar.getAbsolutePath(), options);
                            String str2 = "Content-Type: application/file\r\nAppend-Data: Thumbnail-Image\r\nImage-Width: " + decodeFile.getWidth() + SocketClient.NETASCII_EOL + "Image-Height: " + decodeFile.getHeight() + SocketClient.NETASCII_EOL;
                            int[] iArr = new int[decodeFile.getWidth() * decodeFile.getHeight()];
                            decodeFile.getPixels(iArr, 0, decodeFile.getWidth(), 0, 0, decodeFile.getWidth(), decodeFile.getHeight());
                            bArr = new byte[iArr.length * 4];
                            for (int i3 = 0; i3 < iArr.length; i3++) {
                                try {
                                    bArr[i3 * 4] = (byte) (iArr[i3] >> 24);
                                    bArr[(i3 * 4) + 1] = (byte) (iArr[i3] >> 16);
                                    bArr[(i3 * 4) + 2] = (byte) (iArr[i3] >> 8);
                                    bArr[(i3 * 4) + 3] = (byte) (iArr[i3] >> 0);
                                } catch (Exception e2) {
                                    bArr3 = bArr;
                                    str = "Content-Type: application/file\r\n";
                                    dataOutputStream.write(("MYPOST /" + name + " HTTP/1.1\r\nConnection: Keep-Alive\r\n" + str + "Files-Number: " + this.d.size() + SocketClient.NETASCII_EOL + "Items-Number: " + this.processData.c + SocketClient.NETASCII_EOL + "Content-Length: " + j2 + SocketClient.NETASCII_EOL + "User-Agent: Dalvik\r\nHost: localhost\r\n" + SocketClient.NETASCII_EOL).getBytes("utf-8"));
                                    if (bArr3 != null) {
                                    }
                                    while (dataInputStream.available() == 0) {
                                    }
                                    Properties properties = new Properties();
                                    String str3 = "";
                                    while (true) {
                                        readLine = dataInputStream.readLine();
                                        if (readLine.length() != 0) {
                                        }
                                    }
                                    bArr2 = new byte[Integer.parseInt(properties.getProperty("content-length"))];
                                    dataInputStream.read(bArr2);
                                    if (new String(bArr2).equals("OK")) {
                                    }
                                }
                            }
                            bArr3 = bArr;
                            str = str2;
                        } catch (Exception e3) {
                            bArr = null;
                        }
                    } else {
                        str = gVar.getFileType().a() ? "Content-Type: application/folder\r\n" : "Content-Type: application/file\r\n";
                    }
                    dataOutputStream.write(("MYPOST /" + name + " HTTP/1.1\r\nConnection: Keep-Alive\r\n" + str + "Files-Number: " + this.d.size() + SocketClient.NETASCII_EOL + "Items-Number: " + this.processData.c + SocketClient.NETASCII_EOL + "Content-Length: " + j2 + SocketClient.NETASCII_EOL + "User-Agent: Dalvik\r\nHost: localhost\r\n" + SocketClient.NETASCII_EOL).getBytes("utf-8"));
                    if (bArr3 != null) {
                        dataOutputStream.write(bArr3);
                    }
                    while (dataInputStream.available() == 0) {
                        Thread.sleep(200L);
                        if (currentTask != null && currentTask.taskStopped()) {
                            socket2.close();
                            return false;
                        }
                    }
                    Properties properties2 = new Properties();
                    String str32 = "";
                    while (true) {
                        readLine = dataInputStream.readLine();
                        if (readLine.length() != 0) {
                            break;
                        }
                        str32 = str32 + readLine + "\r\n'";
                        int indexOf = readLine.indexOf(58);
                        if (indexOf >= 0) {
                            properties2.put(readLine.substring(0, indexOf).trim().toLowerCase(), readLine.substring(indexOf + 1).trim());
                        }
                    }
                    bArr2 = new byte[Integer.parseInt(properties2.getProperty("content-length"))];
                    dataInputStream.read(bArr2);
                    if (new String(bArr2).equals("OK")) {
                        setTaskResult(10000, new com.estrongs.a.q(this.f2986a.getString(C0000R.string.receiver_rejected), (Exception) null));
                        socket2.close();
                        return false;
                    }
                    this.c = Long.valueOf(System.currentTimeMillis());
                    com.estrongs.a.b.c cVar2 = new com.estrongs.a.b.c(this.d);
                    char c = 0;
                    long j3 = 0;
                    while (true) {
                        InputStream inputStream = null;
                        try {
                            com.estrongs.fs.g a3 = cVar2.a();
                            if (a3 == null) {
                                break;
                            }
                            long length2 = a3.length();
                            dataOutputStream.write(a3.getPath().substring(length).getBytes());
                            dataOutputStream.write(SocketClient.NETASCII_EOL.getBytes());
                            if (a3.getFileType() == com.estrongs.fs.l.f3183a) {
                                dataOutputStream.write("folder\r\n".getBytes());
                                dataOutputStream.flush();
                            } else {
                                dataOutputStream.write("file\r\n".getBytes());
                                dataOutputStream.write(("" + length2 + SocketClient.NETASCII_EOL).getBytes());
                                dataOutputStream.flush();
                                byte[] bArr4 = new byte[16384];
                                long j4 = 0;
                                while (true) {
                                    if (currentTask != null && currentTask.taskStopped()) {
                                        c = 2;
                                        break;
                                    }
                                    if (j4 >= length2) {
                                        try {
                                            break;
                                        } catch (Exception e4) {
                                            e = e4;
                                        }
                                    } else {
                                        InputStream e5 = inputStream == null ? this.f2987b.e(a3.getAbsolutePath()) : inputStream;
                                        try {
                                            int read = e5.read(bArr4);
                                            dataOutputStream.write(bArr4, 0, read);
                                            dataOutputStream.flush();
                                            j4 += read;
                                            j3 += read;
                                            currentTask.sendMessage(9, Long.valueOf(length2), Long.valueOf(j4));
                                            currentTask.sendMessage(2, Long.valueOf(j3), a3.getAbsolutePath(), Long.valueOf(j2));
                                            inputStream = e5;
                                        } catch (Exception e6) {
                                            e = e6;
                                            inputStream = e5;
                                        }
                                    }
                                    e.printStackTrace();
                                    c = 1;
                                }
                                this.processData.d++;
                                try {
                                    inputStream.close();
                                } catch (Exception e7) {
                                }
                                if (c == 0) {
                                }
                            }
                        } catch (IOException e8) {
                            c = 1;
                        }
                    }
                    try {
                        socket2.close();
                    } catch (Exception e9) {
                    }
                    if (c == 1) {
                        setTaskResult(10000, new com.estrongs.a.q(this.f2986a.getString(C0000R.string.transfering_error), (Exception) null));
                    }
                    return c == 0;
                } catch (Exception e10) {
                    e = e10;
                    socket = socket2;
                    e.printStackTrace();
                    setTaskResult(10000, new com.estrongs.a.q(this.f2986a.getString(C0000R.string.connection_closed), e));
                    try {
                        socket.close();
                    } catch (Exception e11) {
                    }
                    return false;
                }
            }
            if (a2.getFileType() == com.estrongs.fs.l.f3184b) {
                this.processData.c++;
                j = a2.length() + j2;
            } else {
                j = j2;
            }
            j2 = j;
        }
    }
}
