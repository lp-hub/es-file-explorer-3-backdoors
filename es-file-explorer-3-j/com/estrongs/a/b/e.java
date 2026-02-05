package com.estrongs.a.b;

import android.app.Activity;
import android.os.Build;
import com.baidu.sapi2.loginshare.Utils;
import com.dropbox.client2.exception.DropboxServerException;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.util.ak;
import com.estrongs.fs.b.ae;
import com.estrongs.fs.b.as;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Properties;
import java.util.StringTokenizer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f203a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar) {
        this.f203a = dVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        ServerSocket serverSocket;
        Socket socket;
        Socket socket2;
        Socket socket3;
        Socket socket4;
        Socket socket5;
        Socket socket6;
        Socket socket7;
        Socket socket8;
        Socket socket9;
        DataInputStream dataInputStream;
        String nextToken;
        DataInputStream dataInputStream2;
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2;
        Socket socket10;
        DataOutputStream dataOutputStream3;
        Socket socket11;
        Activity activity;
        Socket socket12;
        DataOutputStream dataOutputStream4;
        String str;
        String str2;
        String sb;
        Socket socket13;
        Activity activity2;
        as asVar;
        Socket socket14;
        Activity activity3;
        Activity activity4;
        Socket socket15;
        Activity activity5;
        Socket socket16;
        Activity activity6;
        Socket socket17;
        Activity activity7;
        Socket socket18;
        Socket socket19;
        if (d.f202b.equals("ESuser")) {
            d.f202b = Build.MODEL;
        }
        while (true) {
            try {
                d dVar = this.f203a;
                serverSocket = d.c;
                dVar.d = serverSocket.accept();
                try {
                    try {
                        socket5 = this.f203a.d;
                        socket5.setSoTimeout(10000);
                        PrintStream printStream = System.out;
                        StringBuilder append = new StringBuilder().append("The Client ");
                        socket6 = this.f203a.d;
                        StringBuilder append2 = append.append(socket6.getInetAddress()).append(":");
                        socket7 = this.f203a.d;
                        printStream.println(append2.append(socket7.getPort()).append(" is connected").toString());
                        d dVar2 = this.f203a;
                        socket8 = this.f203a.d;
                        dVar2.e = new DataInputStream(socket8.getInputStream());
                        d dVar3 = this.f203a;
                        socket9 = this.f203a.d;
                        dVar3.f = new DataOutputStream(socket9.getOutputStream());
                        Properties properties = new Properties();
                        dataInputStream = this.f203a.e;
                        String a2 = d.a((InputStream) dataInputStream);
                        StringTokenizer stringTokenizer = new StringTokenizer(a2);
                        String nextToken2 = stringTokenizer.nextToken();
                        int indexOf = a2.indexOf(nextToken2) + nextToken2.length() + 1;
                        int indexOf2 = a2.indexOf("HTTP/1") - 1;
                        if (indexOf2 < 0) {
                            indexOf2 = a2.indexOf("http/1") - 1;
                        }
                        if (indexOf2 > 0) {
                            nextToken = a2.substring(indexOf, indexOf2);
                            stringTokenizer.nextToken();
                        } else {
                            nextToken = stringTokenizer.nextToken();
                        }
                        while (true) {
                            dataInputStream2 = this.f203a.e;
                            String a3 = d.a((InputStream) dataInputStream2);
                            if (a3.length() == 0) {
                                break;
                            }
                            int indexOf3 = a3.indexOf(58);
                            if (indexOf3 >= 0) {
                                properties.put(a3.substring(0, indexOf3).trim().toLowerCase(), a3.substring(indexOf3 + 1).trim());
                            }
                        }
                        String replaceFirst = nextToken.replaceFirst("/", "");
                        if (nextToken2.equals("GET")) {
                            if (!replaceFirst.equals("hostname")) {
                                d dVar4 = this.f203a;
                                dataOutputStream = this.f203a.f;
                                dVar4.a(dataOutputStream, DropboxServerException._404_NOT_FOUND, "Not found");
                            } else if (Long.parseLong(properties.getProperty("content-length")) > 0) {
                                socket10 = this.f203a.d;
                                String readLine = new DataInputStream(socket10.getInputStream()).readLine();
                                d dVar5 = this.f203a;
                                dataOutputStream3 = this.f203a.f;
                                dVar5.a(dataOutputStream3, 200, d.f202b);
                                socket11 = this.f203a.d;
                                ae.a(socket11.getInetAddress().getAddress(), readLine);
                                activity = this.f203a.h;
                                activity.runOnUiThread(new f(this));
                            } else {
                                d dVar6 = this.f203a;
                                dataOutputStream2 = this.f203a.f;
                                dVar6.a(dataOutputStream2, 200, d.f202b);
                            }
                        } else if (nextToken2.equals("MYPOST")) {
                            str = this.f203a.g;
                            if (str.endsWith("/")) {
                                sb = this.f203a.g;
                            } else {
                                StringBuilder sb2 = new StringBuilder();
                                str2 = this.f203a.g;
                                sb = sb2.append(str2).append("/").toString();
                            }
                            long parseLong = properties.getProperty("content-length") != null ? Long.parseLong(properties.getProperty("content-length")) : 0L;
                            int parseInt = properties.getProperty("files-number") != null ? Integer.parseInt(properties.getProperty("files-number")) : 0;
                            String str3 = parseInt > 1 ? replaceFirst + "..." : replaceFirst;
                            int parseInt2 = properties.getProperty("items-number") != null ? Integer.parseInt(properties.getProperty("items-number")) : 0;
                            socket13 = this.f203a.d;
                            String inetAddress = socket13.getInetAddress().toString();
                            String substring = inetAddress.indexOf(47) != -1 ? inetAddress.substring(inetAddress.indexOf(47) + 1) : inetAddress;
                            if (properties.getProperty("content-type").equals("media/realtime")) {
                                StringBuilder append3 = new StringBuilder().append(substring);
                                activity2 = this.f203a.h;
                                String sb3 = append3.append(String.format(activity2.getString(C0000R.string.file_play_notify), ak.d(replaceFirst))).toString();
                                String d = ak.d(replaceFirst);
                                socket14 = this.f203a.d;
                                asVar = new as(sb3, d, sb, socket14, parseLong);
                                asVar.f2984a = Utils.http + properties.getProperty("host");
                                if (replaceFirst.startsWith("/")) {
                                    asVar.f2984a += replaceFirst;
                                } else {
                                    asVar.f2984a += "/" + replaceFirst;
                                }
                            } else if (properties.getProperty("content-type").equals("application/folder")) {
                                StringBuilder append4 = new StringBuilder().append(substring);
                                activity4 = this.f203a.h;
                                String sb4 = append4.append(String.format(activity4.getString(C0000R.string.file_recv_notify1), str3)).toString();
                                socket15 = this.f203a.d;
                                asVar = new as(sb4, replaceFirst, sb, socket15, parseLong);
                                asVar.f2985b = 2;
                            } else if (properties.getProperty("content-type").equals("application/files")) {
                                StringBuilder append5 = new StringBuilder().append(substring);
                                activity5 = this.f203a.h;
                                String sb5 = append5.append(String.format(activity5.getString(C0000R.string.file_recv_notify2), str3)).toString();
                                socket16 = this.f203a.d;
                                asVar = new as(sb5, replaceFirst, sb, socket16, parseLong);
                                asVar.f2985b = 3;
                            } else {
                                String property = properties.getProperty("append-data");
                                if (property == null || !property.toLowerCase().equals("thumbnail-image")) {
                                    StringBuilder append6 = new StringBuilder().append(substring);
                                    activity6 = this.f203a.h;
                                    String sb6 = append6.append(String.format(activity6.getString(C0000R.string.file_recv_notify2), str3)).toString();
                                    socket17 = this.f203a.d;
                                    asVar = new as(sb6, replaceFirst, sb, socket17, parseLong);
                                } else {
                                    StringBuilder append7 = new StringBuilder().append(substring);
                                    activity7 = this.f203a.h;
                                    String sb7 = append7.append(String.format(activity7.getString(C0000R.string.file_recv_notify3), str3)).toString();
                                    socket18 = this.f203a.d;
                                    asVar = new as(sb7, replaceFirst, sb, socket18, parseLong);
                                    asVar.m = Integer.parseInt(properties.getProperty("image-width"));
                                    asVar.n = Integer.parseInt(properties.getProperty("image-height"));
                                    asVar.l = new byte[asVar.m * asVar.n * 4];
                                    int i = 0;
                                    do {
                                        socket19 = this.f203a.d;
                                        int read = socket19.getInputStream().read(asVar.l, i, asVar.l.length - i);
                                        if (read <= 0) {
                                            break;
                                        } else {
                                            i += read;
                                        }
                                    } while (asVar.l.length > i);
                                    if (i < asVar.l.length) {
                                        System.out.println("==========================================image read error");
                                        throw new Exception("Read data error.");
                                        break;
                                    }
                                }
                                asVar.f2985b = 1;
                            }
                            asVar.g = substring;
                            asVar.c = parseInt;
                            asVar.d = parseInt2;
                            activity3 = this.f203a.h;
                            activity3.runOnUiThread(new g(this, asVar));
                            this.f203a.d = null;
                        } else {
                            d dVar7 = this.f203a;
                            dataOutputStream4 = this.f203a.f;
                            dVar7.a(dataOutputStream4, DropboxServerException._404_NOT_FOUND, "Not found");
                        }
                        try {
                            if (socket3 != null) {
                                socket12 = this.f203a.d;
                                socket12.close();
                            }
                        } catch (Exception e) {
                        }
                    } finally {
                        try {
                            socket3 = this.f203a.d;
                            if (socket3 != null) {
                                socket4 = this.f203a.d;
                                socket4.close();
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                    try {
                        socket = this.f203a.d;
                        if (socket != null) {
                            socket2 = this.f203a.d;
                            socket2.close();
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            } catch (Exception e5) {
                return;
            }
        }
    }
}
