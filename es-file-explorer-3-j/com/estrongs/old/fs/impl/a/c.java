package com.estrongs.old.fs.impl.a;

import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.h;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.TimeZone;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPConnectionClosedException;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPReply;
import org.apache.commons.net.ftp.FTPSClient;
import org.apache.commons.net.util.TrustManagerUtils;

/* loaded from: classes.dex */
public class c implements com.estrongs.old.fs.a {

    /* renamed from: a, reason: collision with root package name */
    private static HashMap<String, FTPClient> f3231a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    private static HashMap<String, FTPClient> f3232b = new HashMap<>();
    private static c c = null;
    private static HashMap<String, ArrayList<g>> d = new HashMap<>();
    private HashMap<String, TypedMap> e = new HashMap<>();

    public static com.estrongs.old.fs.a a() {
        if (c == null) {
            c = new c();
        }
        return c;
    }

    private boolean a(FTPClient fTPClient, String str) {
        boolean deleteFile;
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        try {
            fTPClient.changeWorkingDirectory(str);
            FTPFile[] listFiles = fTPClient.listFiles(".");
            FTPFile[] listFiles2 = (listFiles == null || listFiles.length == 0 || (listFiles.length == 1 && listFiles[0].getName().equals("."))) ? fTPClient.listFiles() : listFiles;
            if (listFiles2 != null) {
                for (FTPFile fTPFile : listFiles2) {
                    if (currentTask != null && currentTask.taskStopped()) {
                        return false;
                    }
                    if (!k(fTPFile.getName())) {
                        String str2 = String.valueOf(str) + fTPFile.getName();
                        if (fTPFile.isDirectory()) {
                            deleteFile = a(fTPClient, String.valueOf(str2) + "/");
                        } else {
                            deleteFile = fTPClient.deleteFile(str2);
                            if (currentTask != null) {
                                currentTask.sendMessage(1, 1L, "ftp://" + str2);
                            }
                        }
                        if (!deleteFile) {
                            return false;
                        }
                    }
                }
            }
            if (listFiles2 == null) {
                return true;
            }
            boolean removeDirectory = fTPClient.removeDirectory(str);
            if (currentTask == null) {
                return removeDirectory;
            }
            currentTask.sendMessage(1, 1L, "ftp://" + str);
            return removeDirectory;
        } catch (IOException e) {
            throw new FileSystemException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, g gVar) {
        synchronized (d) {
            ArrayList<g> arrayList = d.get(str);
            if (arrayList != null) {
                synchronized (arrayList) {
                    arrayList.add(gVar);
                }
            } else {
                ArrayList<g> arrayList2 = new ArrayList<>();
                arrayList2.add(gVar);
                d.put(str, arrayList2);
            }
        }
    }

    private boolean j(String str) {
        return str.charAt(str.length() + (-1)) == '/';
    }

    private boolean k(String str) {
        return (str != null && str.equals(".")) || str.equals("..");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v15, types: [org.apache.commons.net.ftp.FTPClient] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v23, types: [org.apache.commons.net.ftp.FTPClient] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [org.apache.commons.net.ftp.FTPClient] */
    @Override // com.estrongs.old.fs.a
    public InputStream a(String str, long j) {
        InputStream inputStream;
        Throwable th;
        IOException e;
        InputStream inputStream2;
        InputStream retrieveFileStream;
        InputStream inputStream3;
        InputStream inputStream4 = null;
        String h = ak.h(str);
        String i = ak.i(str);
        ?? r1 = 1;
        try {
            try {
                r1 = a(h, true);
                if (r1 == 0) {
                    if (0 != 0) {
                        return null;
                    }
                    if (r1 != 0) {
                        try {
                            r1.logout();
                            r1.disconnect();
                        } catch (Throwable th2) {
                            return null;
                        }
                    }
                    FTPClient a2 = a(h, true);
                    if (a2 == null) {
                        return null;
                    }
                    InputStream retrieveFileStream2 = a2.retrieveFileStream(i);
                    if (retrieveFileStream2 == null) {
                        a2.changeWorkingDirectory(ak.aY(i));
                        retrieveFileStream2 = a2.retrieveFileStream(ak.d(i));
                    }
                    new b(retrieveFileStream2, a2);
                    return null;
                }
                try {
                    try {
                        r1.setRestartOffset(j);
                        r1.setKeepAlive(true);
                        r1.setRemoteVerificationEnabled(false);
                        r1.setFileTransferMode(10);
                        InputStream retrieveFileStream3 = r1.retrieveFileStream(i);
                        if (retrieveFileStream3 == null) {
                            try {
                                r1.changeWorkingDirectory(ak.aY(i));
                                retrieveFileStream = r1.retrieveFileStream(ak.d(i));
                            } catch (IOException e2) {
                                e = e2;
                                throw new FileSystemException(e);
                            } catch (Throwable th3) {
                                inputStream = retrieveFileStream3;
                                th = th3;
                                if (inputStream == null) {
                                    if (r1 != 0) {
                                        try {
                                            r1.logout();
                                            r1.disconnect();
                                        } catch (Throwable th4) {
                                            throw th;
                                        }
                                    }
                                    FTPClient a3 = a(h, true);
                                    if (a3 != null) {
                                        InputStream retrieveFileStream4 = a3.retrieveFileStream(i);
                                        if (retrieveFileStream4 == null) {
                                            a3.changeWorkingDirectory(ak.aY(i));
                                            retrieveFileStream4 = a3.retrieveFileStream(ak.d(i));
                                        }
                                        new b(retrieveFileStream4, a3);
                                    }
                                }
                                throw th;
                            }
                        } else {
                            retrieveFileStream = retrieveFileStream3;
                        }
                    } catch (FTPConnectionClosedException e3) {
                    }
                } catch (IOException e4) {
                    e = e4;
                } catch (Throwable th5) {
                    inputStream = null;
                    th = th5;
                }
                try {
                    InputStream bVar = new b(retrieveFileStream, r1);
                    if (bVar != null) {
                        return bVar;
                    }
                    if (r1 != 0) {
                        try {
                            r1.logout();
                            r1.disconnect();
                        } catch (Throwable th6) {
                            return bVar;
                        }
                    }
                    FTPClient a4 = a(h, true);
                    if (a4 == null) {
                        return bVar;
                    }
                    bVar = a4.retrieveFileStream(i);
                    if (bVar == null) {
                        a4.changeWorkingDirectory(ak.aY(i));
                        inputStream3 = a4.retrieveFileStream(ak.d(i));
                    } else {
                        inputStream3 = bVar;
                    }
                    try {
                        return new b(inputStream3, a4);
                    } catch (Throwable th7) {
                        return inputStream3;
                    }
                } catch (FTPConnectionClosedException e5) {
                    inputStream4 = retrieveFileStream;
                    if (inputStream4 != null) {
                        return inputStream4;
                    }
                    if (r1 != 0) {
                        try {
                            r1.logout();
                            r1.disconnect();
                        } catch (Throwable th8) {
                            return inputStream4;
                        }
                    }
                    FTPClient a5 = a(h, true);
                    if (a5 == null) {
                        return inputStream4;
                    }
                    inputStream4 = a5.retrieveFileStream(i);
                    if (inputStream4 == null) {
                        a5.changeWorkingDirectory(ak.aY(i));
                        inputStream2 = a5.retrieveFileStream(ak.d(i));
                    } else {
                        inputStream2 = inputStream4;
                    }
                    try {
                        return new b(inputStream2, a5);
                    } catch (Throwable th9) {
                        return inputStream2;
                    }
                } catch (IOException e6) {
                    e = e6;
                    throw new FileSystemException(e);
                }
            } catch (Throwable th10) {
                th = th10;
            }
        } catch (FTPConnectionClosedException e7) {
            r1 = 0;
        } catch (IOException e8) {
            e = e8;
        } catch (Throwable th11) {
            inputStream = null;
            th = th11;
            r1 = 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0027 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.estrongs.old.fs.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<com.estrongs.fs.g> a(String str, h hVar) {
        FTPClient fTPClient;
        FTPClient fTPClient2 = null;
        LinkedList linkedList = new LinkedList();
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        try {
            try {
                FTPClient a2 = a(ak.h(str), true);
                try {
                    if (a2 == null) {
                        throw new ConnectException();
                    }
                    if (currentTask != null && currentTask.taskStopped()) {
                        if (a2 != null) {
                            try {
                                a2.logout();
                                a2.disconnect();
                            } catch (IOException e) {
                            }
                        }
                        return linkedList;
                    }
                    a2.changeWorkingDirectory(ak.i(str));
                    if (a2.getReplyCode() == 550) {
                        throw new IOException("550");
                    }
                    FTPFile[] files = a2.initiateListParsing(".").getFiles();
                    FTPFile[] listFiles = (files == null || files.length == 0 || (files.length == 1 && files[0].getName().equals("."))) ? a2.listFiles() : files;
                    TypedMap typedMap = this.e.get(ak.h(str));
                    if (com.estrongs.android.util.g.f2695a[0].equals(typedMap != null ? typedMap.getString("encode", "UTF-8") : "UTF-8") && !"UTF-8".equals(a2.getControlEncoding())) {
                        typedMap.put("detectedEncoding", a2.getControlEncoding());
                    }
                    if (listFiles != null) {
                        String str2 = str;
                        for (FTPFile fTPFile : listFiles) {
                            if (currentTask != null && currentTask.taskStopped()) {
                                if (a2 != null) {
                                    try {
                                        a2.logout();
                                        a2.disconnect();
                                    } catch (IOException e2) {
                                    }
                                }
                                return linkedList;
                            }
                            if (fTPFile != null) {
                                if (!str2.endsWith("/")) {
                                    str2 = String.valueOf(str2) + "/";
                                }
                                String name = fTPFile.getName();
                                if (!name.equals(".") && !name.equals("..")) {
                                    String str3 = (!fTPFile.isDirectory() || name.endsWith("/")) ? name : String.valueOf(name) + "/";
                                    String str4 = null;
                                    if (fTPFile.isSymbolicLink()) {
                                        str4 = fTPFile.getLink();
                                        if (str4.endsWith("/")) {
                                            fTPFile.setType(1);
                                        } else {
                                            fTPFile.setType(a2.changeWorkingDirectory(ak.i(new StringBuilder(String.valueOf(str2)).append(str4).toString())) ? 1 : 0);
                                        }
                                    }
                                    a aVar = new a(fTPFile, String.valueOf(str2) + str3, str4);
                                    if (hVar != null && hVar.a(aVar)) {
                                        linkedList.add(aVar);
                                    }
                                }
                            }
                        }
                    }
                    if (a2 != null) {
                        try {
                            a2.logout();
                            a2.disconnect();
                        } catch (IOException e3) {
                        }
                    }
                    return linkedList;
                } catch (Throwable th) {
                    th = th;
                    fTPClient = a2;
                    try {
                        throw new FileSystemException(th);
                    } catch (Throwable th2) {
                        th = th2;
                        fTPClient2 = fTPClient;
                        if (fTPClient2 != null) {
                            try {
                                fTPClient2.logout();
                                fTPClient2.disconnect();
                            } catch (IOException e4) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                if (fTPClient2 != null) {
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            fTPClient = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0149 A[Catch: IOException -> 0x02b7, TryCatch #0 {IOException -> 0x02b7, blocks: (B:78:0x0143, B:80:0x0149, B:81:0x0150, B:83:0x02a8, B:85:0x02ae), top: B:77:0x0143 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02a8 A[Catch: IOException -> 0x02b7, TRY_ENTER, TryCatch #0 {IOException -> 0x02b7, blocks: (B:78:0x0143, B:80:0x0149, B:81:0x0150, B:83:0x02a8, B:85:0x02ae), top: B:77:0x0143 }] */
    /* JADX WARN: Type inference failed for: r2v13, types: [org.apache.commons.net.ftp.FTPSClient, com.estrongs.old.fs.impl.a.f] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:144:? -> B:141:0x02c8). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FTPClient a(String str, boolean z) {
        String str2;
        boolean z2;
        Exception exc;
        ArrayList<g> arrayList;
        g gVar;
        d dVar;
        String str3;
        String str4;
        String x = ak.x(str);
        String y = ak.y(str);
        String a2 = ak.a(str);
        String v = ak.v(str);
        String k = ak.k(str);
        TypedMap typedMap = this.e.get(ak.h(str));
        if (typedMap != null) {
            boolean z3 = typedMap.getBoolean("mode", true);
            str2 = typedMap.getString("encode", "UTF-8");
            z2 = z3;
        } else {
            str2 = "UTF-8";
            z2 = true;
        }
        boolean l = ak.l(str);
        if (v == null) {
            v = l ? "990" : "21";
        }
        g gVar2 = null;
        try {
            synchronized (d) {
                ArrayList<g> arrayList2 = d.get(String.valueOf(x) + "@" + a2 + "@" + v);
                if (arrayList2 == null) {
                    ArrayList<g> arrayList3 = new ArrayList<>();
                    d.put(String.valueOf(x) + "@" + a2 + "@" + v, arrayList3);
                    arrayList = arrayList3;
                } else {
                    arrayList = arrayList2;
                }
            }
            while (arrayList.size() > 0) {
                synchronized (arrayList) {
                    try {
                        g remove = arrayList.remove(0);
                        try {
                            try {
                                if (remove.f3238a.isConnected()) {
                                    if (!remove.f3239b.equals(str2)) {
                                        remove.f3239b = str2;
                                        remove.f3238a.setControlEncoding(remove.f3239b);
                                    }
                                    try {
                                        remove.f3238a.changeWorkingDirectory(k);
                                        if (com.estrongs.android.util.g.f2695a[0].equals(str2) && typedMap.getString("detectedEncoding") != null && !remove.f3238a.getControlEncoding().equals(typedMap.getString("detectedEncoding"))) {
                                            remove.f3238a.setControlEncoding(typedMap.getString("detectedEncoding"));
                                        }
                                        if (z2 && !remove.c) {
                                            remove.f3238a.enterLocalPassiveMode();
                                            remove.c = true;
                                        } else if (!z2 && remove.c) {
                                            remove.f3238a.enterLocalActiveMode();
                                            remove.c = false;
                                        }
                                        return remove.f3238a;
                                    } catch (FTPConnectionClosedException e) {
                                    } catch (IOException e2) {
                                    }
                                }
                                if (remove.f3238a instanceof d) {
                                    ((d) remove.f3238a).f3233a = true;
                                } else if (remove.f3238a instanceof f) {
                                    ((f) remove.f3238a).f3236a = true;
                                }
                                try {
                                    remove.f3238a.logout();
                                } catch (IOException e3) {
                                }
                                try {
                                    remove.f3238a.disconnect();
                                } catch (IOException e4) {
                                }
                                remove.f3238a = null;
                                gVar2 = null;
                            } catch (Exception e5) {
                                gVar2 = remove;
                                exc = e5;
                                exc.printStackTrace();
                                if (gVar2 != null && gVar2.f3238a != null) {
                                    try {
                                        if (!(gVar2.f3238a instanceof d)) {
                                            ((d) gVar2.f3238a).f3233a = true;
                                        } else if (gVar2.f3238a instanceof f) {
                                            ((f) gVar2.f3238a).f3236a = true;
                                        }
                                        gVar2.f3238a.logout();
                                        gVar2.f3238a.disconnect();
                                    } catch (IOException e6) {
                                        e6.printStackTrace();
                                    }
                                }
                                throw new FileSystemException(exc);
                            }
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
            }
            gVar = new g(null);
        } catch (Exception e7) {
            exc = e7;
        }
        try {
            if (l) {
                ?? fVar = new f(String.valueOf(x) + "@" + a2 + "@" + v, gVar, str.startsWith("ftps://"));
                fVar.setTrustManager(TrustManagerUtils.getAcceptAllTrustManager());
                fVar.setNeedClientAuth(true);
                dVar = fVar;
            } else {
                dVar = new d(String.valueOf(x) + "@" + a2 + "@" + v, gVar);
            }
            dVar.setListHiddenFiles(true);
            gVar.f3238a = dVar;
            gVar.f3239b = str2;
            if (com.estrongs.android.util.g.f2695a[0].equals(str2) && typedMap.getString("detectedEncoding") != null) {
                gVar.f3239b = typedMap.getString("detectedEncoding");
            }
            gVar.f3238a.setControlEncoding(gVar.f3239b);
            dVar.setConnectTimeout(40000);
            int i = -1;
            if (v != null) {
                try {
                    i = Integer.parseInt(v);
                } catch (NumberFormatException e8) {
                    i = -1;
                }
            }
            if (i != -1) {
                dVar.connect(a2, i);
            } else {
                dVar.connect(a2);
            }
            if (!FTPReply.isPositiveCompletion(dVar.getReplyCode())) {
                dVar.disconnect();
                return null;
            }
            if (l) {
                try {
                    ((FTPSClient) dVar).execPBSZ(0L);
                    ((FTPSClient) dVar).execPROT("P");
                } catch (Exception e9) {
                }
            }
            if (x == null) {
                str4 = "Anonymous";
                str3 = "";
            } else {
                str3 = y;
                str4 = x;
            }
            dVar.login(str4, str3);
            int replyCode = dVar.getReplyCode();
            if (replyCode == 530) {
                throw new IllegalArgumentException("530");
            }
            if (!FTPReply.isPositiveCompletion(replyCode)) {
                dVar.logout();
                dVar.disconnect();
                return null;
            }
            if (k != null && k.length() > 1) {
                dVar.changeWorkingDirectory(k);
            }
            dVar.setFileType(2);
            if (z2) {
                dVar.enterLocalPassiveMode();
                gVar.c = true;
            } else {
                dVar.enterLocalActiveMode();
                gVar.c = false;
            }
            dVar.setDefaultTimeout(40000);
            return gVar.f3238a;
        } catch (Exception e10) {
            exc = e10;
            gVar2 = gVar;
            exc.printStackTrace();
            if (gVar2 != null) {
                if (!(gVar2.f3238a instanceof d)) {
                }
                gVar2.f3238a.logout();
                gVar2.f3238a.disconnect();
            }
            throw new FileSystemException(exc);
        }
    }

    @Override // com.estrongs.old.fs.a
    public void a(TypedMap typedMap) {
        TypedMap typedMap2 = this.e.get(ak.h(typedMap.getString("server")));
        if (typedMap2 != null && typedMap2.getString("detectedEncoding") != null) {
            typedMap.put("detectedEncoding", typedMap2.getString("detectedEncoding"));
        }
        this.e.put(ak.h(typedMap.getString("server")), typedMap);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x005d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.estrongs.old.fs.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(String str, com.estrongs.fs.g gVar) {
        FTPClient fTPClient;
        Throwable th;
        IOException iOException;
        FTPClient fTPClient2 = null;
        try {
            try {
                FTPClient a2 = a(ak.h(str), true);
                if (a2 == null) {
                    if (a2 != null) {
                        try {
                            a2.logout();
                            a2.disconnect();
                            return;
                        } catch (IOException e) {
                            return;
                        }
                    }
                    return;
                }
                try {
                    String i = ak.i(str);
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
                    simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
                    a2.setModificationTime(i, simpleDateFormat.format(new Date(gVar.lastModified())));
                    if (a2 != null) {
                        try {
                            a2.logout();
                            a2.disconnect();
                        } catch (IOException e2) {
                        }
                    }
                } catch (IOException e3) {
                    fTPClient = a2;
                    iOException = e3;
                    try {
                        throw new FileSystemException(iOException);
                    } catch (Throwable th2) {
                        th = th2;
                        if (fTPClient != null) {
                            try {
                                fTPClient.logout();
                                fTPClient.disconnect();
                            } catch (IOException e4) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    fTPClient = a2;
                    th = th3;
                    if (fTPClient != null) {
                    }
                    throw th;
                }
            } catch (FTPConnectionClosedException e5) {
                if (0 != 0) {
                    try {
                        fTPClient2.logout();
                        fTPClient2.disconnect();
                    } catch (IOException e6) {
                    }
                }
            }
        } catch (IOException e7) {
            fTPClient = null;
            iOException = e7;
        } catch (Throwable th4) {
            fTPClient = null;
            th = th4;
        }
    }

    @Override // com.estrongs.old.fs.a
    public boolean a(String str) {
        boolean z = false;
        FTPClient fTPClient = null;
        try {
            try {
                try {
                    fTPClient = a(ak.h(str), true);
                    if (fTPClient != null) {
                        String i = ak.i(str);
                        if (str.endsWith("/")) {
                            z = fTPClient.makeDirectory(i);
                            if (!z) {
                                fTPClient.changeWorkingDirectory(ak.aY(i));
                                z = fTPClient.makeDirectory(ak.d(i));
                            }
                        } else {
                            String substring = i.substring(0, i.lastIndexOf("/") + 1);
                            String substring2 = i.substring(substring.length(), i.length());
                            fTPClient.changeWorkingDirectory(substring);
                            OutputStream storeFileStream = fTPClient.storeFileStream(substring2);
                            boolean z2 = storeFileStream != null;
                            if (storeFileStream != null) {
                                try {
                                    storeFileStream.close();
                                } catch (FTPConnectionClosedException e) {
                                    z = z2;
                                    return z;
                                }
                            }
                            ((d) fTPClient).f3233a = true;
                            z = z2;
                        }
                        if (fTPClient != null) {
                            try {
                                fTPClient.logout();
                                fTPClient.disconnect();
                            } catch (IOException e2) {
                            }
                        }
                    } else if (fTPClient != null) {
                        try {
                            fTPClient.logout();
                            fTPClient.disconnect();
                        } catch (IOException e3) {
                        }
                    }
                } catch (IOException e4) {
                    throw new FileSystemException(e4);
                }
            } finally {
                if (0 != 0) {
                    try {
                        fTPClient.logout();
                        fTPClient.disconnect();
                    } catch (IOException e5) {
                    }
                }
            }
        } catch (FTPConnectionClosedException e6) {
        }
        return z;
    }

    @Override // com.estrongs.old.fs.a
    public boolean a(String str, String str2) {
        boolean z = false;
        FTPClient fTPClient = null;
        try {
            try {
                FTPClient a2 = a(ak.h(str), true);
                if (a2 != null) {
                    String i = ak.i(str);
                    z = a2.rename(i, ak.i(str2));
                    if (!z) {
                        a2.changeWorkingDirectory(ak.aY(i));
                        z = a2.rename(ak.d(i), ak.d(str2));
                    }
                    if (a2 != null) {
                        try {
                            a2.logout();
                            a2.disconnect();
                        } catch (IOException e) {
                        }
                    }
                } else if (a2 != null) {
                    try {
                        a2.logout();
                        a2.disconnect();
                    } catch (IOException e2) {
                    }
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        fTPClient.logout();
                        fTPClient.disconnect();
                    } catch (IOException e3) {
                    }
                }
                throw th;
            }
        } catch (FTPConnectionClosedException e4) {
            if (0 != 0) {
                try {
                    fTPClient.logout();
                    fTPClient.disconnect();
                } catch (IOException e5) {
                }
            }
        } catch (IOException e6) {
            throw new FileSystemException(e6);
        }
        return z;
    }

    @Override // com.estrongs.old.fs.a
    public boolean b(String str) {
        FTPClient fTPClient;
        String str2;
        String str3;
        boolean z = false;
        FTPClient fTPClient2 = null;
        try {
            try {
                try {
                    FTPClient a2 = a(ak.h(str), true);
                    if (a2 == null) {
                        if (a2 == null) {
                            return false;
                        }
                        try {
                            a2.logout();
                            a2.disconnect();
                            return false;
                        } catch (IOException e) {
                            return false;
                        }
                    }
                    try {
                        String i = ak.i(str);
                        if (i.length() == 1) {
                            if (a2 != null) {
                                try {
                                    a2.logout();
                                    a2.disconnect();
                                } catch (IOException e2) {
                                }
                            }
                            return true;
                        }
                        if (i.endsWith("/")) {
                            String substring = i.substring(0, i.length() - 1);
                            String substring2 = substring.substring(0, substring.lastIndexOf("/") + 1);
                            String substring3 = i.substring(substring2.length(), i.length()).substring(0, r3.length() - 1);
                            str2 = substring2;
                            str3 = substring3;
                        } else {
                            String substring4 = i.substring(0, i.lastIndexOf("/") + 1);
                            String substring5 = i.substring(substring4.length(), i.length());
                            str2 = substring4;
                            str3 = substring5;
                        }
                        a2.changeWorkingDirectory(str2);
                        String[] listNames = a2.listNames();
                        if (listNames != null) {
                            int i2 = 0;
                            while (true) {
                                if (i2 >= listNames.length) {
                                    break;
                                }
                                if (listNames[i2].equals(str3)) {
                                    z = true;
                                    break;
                                }
                                i2++;
                            }
                        }
                        if (a2 == null) {
                            return z;
                        }
                        try {
                            a2.logout();
                            a2.disconnect();
                            return z;
                        } catch (IOException e3) {
                            return z;
                        }
                    } catch (FTPConnectionClosedException e4) {
                        fTPClient = a2;
                        if (fTPClient == null) {
                            return false;
                        }
                        try {
                            fTPClient.logout();
                            fTPClient.disconnect();
                            return false;
                        } catch (IOException e5) {
                            return false;
                        }
                    }
                } catch (IOException e6) {
                    throw new FileSystemException(e6);
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        fTPClient2.logout();
                        fTPClient2.disconnect();
                    } catch (IOException e7) {
                    }
                }
                throw th;
            }
        } catch (FTPConnectionClosedException e8) {
            fTPClient = null;
        }
    }

    @Override // com.estrongs.old.fs.a
    public boolean b(String str, String str2) {
        FTPClient fTPClient;
        boolean z = true;
        boolean z2 = false;
        FTPClient fTPClient2 = null;
        try {
            try {
                try {
                    FTPClient a2 = a(ak.h(str), true);
                    if (a2 != null) {
                        try {
                            boolean j = j(str);
                            String i = ak.i(str);
                            String i2 = ak.i(j ? String.valueOf(str2) + "/" : str2);
                            if (!j) {
                                FTPFile[] listFiles = a2.listFiles(i2);
                                if (listFiles == null || listFiles.length <= 0) {
                                    z = false;
                                }
                            } else if (!a2.changeWorkingDirectory(i2)) {
                                z = false;
                            }
                            if (z) {
                                String i3 = ak.i(String.valueOf(ak.e(str2)) + "/" + ak.d(str2) + ((int) System.currentTimeMillis()) + (j ? "/" : ""));
                                a2.rename(i, i3);
                                if (j) {
                                    a(a2, i2);
                                } else {
                                    c(i2);
                                }
                                z2 = a2.rename(i3, i2);
                                if (a2 != null) {
                                    try {
                                        a2.logout();
                                        a2.disconnect();
                                    } catch (IOException e) {
                                    }
                                }
                            } else {
                                z2 = a2.rename(i, i2);
                                if (a2 != null) {
                                    try {
                                        a2.logout();
                                        a2.disconnect();
                                    } catch (IOException e2) {
                                    }
                                }
                            }
                        } catch (FTPConnectionClosedException e3) {
                            fTPClient = a2;
                            if (fTPClient != null) {
                                try {
                                    fTPClient.logout();
                                    fTPClient.disconnect();
                                } catch (IOException e4) {
                                }
                            }
                            return z2;
                        }
                    } else if (a2 != null) {
                        try {
                            a2.logout();
                            a2.disconnect();
                        } catch (IOException e5) {
                        }
                    }
                } catch (IOException e6) {
                    throw new FileSystemException(e6);
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        fTPClient2.logout();
                        fTPClient2.disconnect();
                    } catch (IOException e7) {
                    }
                }
                throw th;
            }
        } catch (FTPConnectionClosedException e8) {
            fTPClient = null;
        }
        return z2;
    }

    @Override // com.estrongs.old.fs.a
    public boolean c(String str) {
        boolean z = false;
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        FTPClient fTPClient = null;
        try {
            try {
                FTPClient a2 = a(ak.h(str), true);
                if (a2 == null) {
                    if (a2 != null) {
                        try {
                            a2.logout();
                            a2.disconnect();
                        } catch (IOException e) {
                        }
                    }
                } else if (currentTask == null || !currentTask.taskStopped()) {
                    String i = ak.i(str);
                    if (j(str)) {
                        z = a(a2, i);
                    } else {
                        z = a2.deleteFile(i);
                        if (!z) {
                            a2.changeWorkingDirectory(ak.aY(i));
                            if (a2.getReplyCode() == 550) {
                                throw new IOException("550");
                            }
                            z = a2.deleteFile(ak.d(i));
                        }
                        if (currentTask != null) {
                            currentTask.sendMessage(1, 1L, "ftp://" + str);
                        }
                    }
                    if (a2 != null) {
                        try {
                            a2.logout();
                            a2.disconnect();
                        } catch (IOException e2) {
                        }
                    }
                } else if (a2 != null) {
                    try {
                        a2.logout();
                        a2.disconnect();
                    } catch (IOException e3) {
                    }
                }
                return z;
            } catch (IOException e4) {
                throw new FileSystemException(e4);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    fTPClient.logout();
                    fTPClient.disconnect();
                } catch (IOException e5) {
                }
            }
            throw th;
        }
    }

    @Override // com.estrongs.old.fs.a
    public boolean d(String str) {
        FTPClient fTPClient = null;
        try {
            try {
                try {
                    FTPClient a2 = a(ak.h(str), true);
                    if (a2 == null) {
                        if (a2 != null) {
                            try {
                                a2.logout();
                                a2.disconnect();
                            } catch (IOException e) {
                            }
                        }
                        return false;
                    }
                    String i = ak.i(str);
                    boolean makeDirectory = a2.makeDirectory(i);
                    if (!makeDirectory) {
                        a2.changeWorkingDirectory(ak.aY(i));
                        makeDirectory = a2.makeDirectory(ak.d(i));
                    }
                    if (a2 == null) {
                        return makeDirectory;
                    }
                    try {
                        a2.logout();
                        a2.disconnect();
                        return makeDirectory;
                    } catch (IOException e2) {
                        return makeDirectory;
                    }
                } catch (Throwable th) {
                    if (0 != 0) {
                        try {
                            fTPClient.logout();
                            fTPClient.disconnect();
                        } catch (IOException e3) {
                        }
                    }
                    throw th;
                }
            } catch (FTPConnectionClosedException e4) {
                throw new FileSystemException(e4);
            }
        } catch (IOException e5) {
            throw new FileSystemException(e5);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:90:0x00c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.estrongs.old.fs.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long e(String str) {
        Throwable th;
        IOException e;
        FTPClient a2;
        FTPClient fTPClient = null;
        try {
            try {
                a2 = a(ak.h(str), true);
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    try {
                        fTPClient.logout();
                        fTPClient.disconnect();
                    } catch (IOException e2) {
                    }
                }
                throw th;
            }
        } catch (FTPConnectionClosedException e3) {
        } catch (IOException e4) {
            e = e4;
        } catch (Throwable th3) {
            th = th3;
            if (0 != 0) {
            }
            throw th;
        }
        if (a2 == null) {
            if (a2 != null) {
                try {
                    a2.logout();
                    a2.disconnect();
                } catch (IOException e5) {
                }
            }
            return -1L;
        }
        try {
            String i = ak.i(str);
            a2.changeWorkingDirectory(i);
            String str2 = i;
            for (int i2 = 0; i2 < 2; i2++) {
                FTPFile[] listFiles = a2.listFiles(str2);
                if (listFiles != null && listFiles.length > 0) {
                    long size = listFiles[0].getSize();
                    if (a2 == null) {
                        return size;
                    }
                    try {
                        a2.logout();
                        a2.disconnect();
                        return size;
                    } catch (IOException e6) {
                        return size;
                    }
                }
                if (str2.contains(" ")) {
                    str2 = str2.replace(" ", "\\ ");
                }
            }
            try {
                a2.changeWorkingDirectory(ak.aY(i));
                String d2 = ak.d(i);
                for (int i3 = 0; i3 < 2; i3++) {
                    FTPFile[] listFiles2 = a2.listFiles();
                    if (listFiles2 != null && listFiles2.length > 0) {
                        for (int i4 = 0; i4 < listFiles2.length; i4++) {
                            if (listFiles2[i4].getName().equals(d2)) {
                                long size2 = listFiles2[i4].getSize();
                                if (a2 == null) {
                                    return size2;
                                }
                                try {
                                    a2.logout();
                                    a2.disconnect();
                                    return size2;
                                } catch (IOException e7) {
                                    return size2;
                                }
                            }
                        }
                    } else {
                        if (!i.contains(" ")) {
                            break;
                        }
                        i = i.replace(" ", "\\ ");
                    }
                }
            } catch (Exception e8) {
            }
            if (a2 != null) {
                try {
                    a2.logout();
                    a2.disconnect();
                } catch (IOException e9) {
                }
            }
        } catch (FTPConnectionClosedException e10) {
            fTPClient = a2;
            if (fTPClient != null) {
                try {
                    fTPClient.logout();
                    fTPClient.disconnect();
                } catch (IOException e11) {
                }
            }
            return -1L;
        } catch (IOException e12) {
            e = e12;
            throw new FileSystemException(e);
        }
        return -1L;
    }

    @Override // com.estrongs.old.fs.a
    public boolean f(String str) {
        return j(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x00c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.estrongs.old.fs.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public com.estrongs.fs.c g(String str) {
        Throwable th;
        IOException e;
        FTPClient fTPClient;
        FTPClient fTPClient2 = null;
        int i = 0;
        try {
            try {
                FTPClient a2 = a(ak.h(str), true);
                if (a2 == null) {
                    if (a2 == null) {
                        return null;
                    }
                    try {
                        a2.logout();
                        a2.disconnect();
                        return null;
                    } catch (IOException e2) {
                        return null;
                    }
                }
                try {
                    String i2 = ak.i(str);
                    String str2 = i2;
                    for (int i3 = 0; i3 < 2; i3++) {
                        FTPFile[] listFiles = a2.listFiles(str2);
                        if (listFiles != null && listFiles.length > 0) {
                            com.estrongs.fs.c cVar = new com.estrongs.fs.c(str);
                            cVar.d = listFiles.length > 1;
                            if (cVar.d) {
                                int length = listFiles.length;
                                while (i < length) {
                                    if (listFiles[i].isDirectory()) {
                                        cVar.f++;
                                    } else {
                                        cVar.g++;
                                    }
                                    i++;
                                }
                            } else {
                                cVar.c = "File";
                                cVar.e = listFiles[0].getSize();
                            }
                            cVar.j = listFiles[0].getTimestamp().getTimeInMillis();
                            cVar.m = false;
                            cVar.k = listFiles[0].hasPermission(0, 0);
                            cVar.l = listFiles[0].hasPermission(0, 1);
                            if (a2 != null) {
                                try {
                                    a2.logout();
                                    a2.disconnect();
                                } catch (IOException e3) {
                                }
                            }
                            return cVar;
                        }
                        if (str2.contains(" ")) {
                            str2 = str2.replace(" ", "\\ ");
                        }
                    }
                    try {
                        a2.changeWorkingDirectory(ak.aY(i2));
                        ak.d(i2);
                        String str3 = i2;
                        for (int i4 = 0; i4 < 2; i4++) {
                            FTPFile[] listFiles2 = a2.listFiles();
                            if (listFiles2 != null && listFiles2.length > 0) {
                                com.estrongs.fs.c cVar2 = new com.estrongs.fs.c(str);
                                cVar2.d = listFiles2.length > 1;
                                if (cVar2.d) {
                                    int length2 = listFiles2.length;
                                    while (i < length2) {
                                        if (listFiles2[i].isDirectory()) {
                                            cVar2.f++;
                                        } else {
                                            cVar2.g++;
                                        }
                                        i++;
                                    }
                                } else {
                                    cVar2.c = "File";
                                    cVar2.e = listFiles2[0].getSize();
                                }
                                cVar2.j = listFiles2[0].getTimestamp().getTimeInMillis();
                                cVar2.m = false;
                                cVar2.k = listFiles2[0].hasPermission(0, 0);
                                cVar2.l = listFiles2[0].hasPermission(0, 1);
                                if (a2 != null) {
                                    try {
                                        a2.logout();
                                        a2.disconnect();
                                    } catch (IOException e4) {
                                    }
                                }
                                return cVar2;
                            }
                            if (!str3.contains(" ")) {
                                break;
                            }
                            str3 = str3.replace(" ", "\\ ");
                        }
                    } catch (Exception e5) {
                    }
                    if (a2 == null) {
                        return null;
                    }
                    try {
                        a2.logout();
                        a2.disconnect();
                        return null;
                    } catch (IOException e6) {
                        return null;
                    }
                } catch (FTPConnectionClosedException e7) {
                    fTPClient = a2;
                    if (fTPClient == null) {
                        return null;
                    }
                    try {
                        fTPClient.logout();
                        fTPClient.disconnect();
                        return null;
                    } catch (IOException e8) {
                        return null;
                    }
                } catch (IOException e9) {
                    e = e9;
                    throw new FileSystemException(e);
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    try {
                        fTPClient2.logout();
                        fTPClient2.disconnect();
                    } catch (IOException e10) {
                    }
                }
                throw th;
            }
        } catch (FTPConnectionClosedException e11) {
            fTPClient = null;
        } catch (IOException e12) {
            e = e12;
        } catch (Throwable th3) {
            th = th3;
            if (0 != 0) {
            }
            throw th;
        }
    }

    @Override // com.estrongs.old.fs.a
    public com.estrongs.fs.g h(String str) {
        FTPClient fTPClient;
        FTPClient fTPClient2;
        try {
            fTPClient = a(ak.h(str), true);
        } catch (FTPConnectionClosedException e) {
            fTPClient2 = null;
        } catch (Exception e2) {
            fTPClient = null;
        } catch (Throwable th) {
            th = th;
            fTPClient = null;
        }
        if (fTPClient == null) {
            if (fTPClient != null) {
                try {
                    fTPClient.logout();
                    fTPClient.disconnect();
                } catch (IOException e3) {
                }
            }
            return null;
        }
        try {
            try {
                String i = ak.i(str);
                fTPClient.changeWorkingDirectory(i);
                String str2 = i;
                for (int i2 = 0; i2 < 2; i2++) {
                    FTPFile[] listFiles = fTPClient.listFiles(str2);
                    if (listFiles != null && listFiles.length > 0) {
                        a aVar = new a(listFiles[0], str, listFiles[0].getLink());
                        if (fTPClient == null) {
                            return aVar;
                        }
                        try {
                            fTPClient.logout();
                            fTPClient.disconnect();
                            return aVar;
                        } catch (IOException e4) {
                            return aVar;
                        }
                    }
                    if (str2.contains(" ")) {
                        str2 = str2.replace(" ", "\\ ");
                    }
                }
                try {
                    fTPClient.changeWorkingDirectory(ak.aY(i));
                    String d2 = ak.d(i);
                    for (int i3 = 0; i3 < 2; i3++) {
                        FTPFile[] listFiles2 = fTPClient.listFiles();
                        if (listFiles2 != null && listFiles2.length > 0) {
                            for (int i4 = 0; i4 < listFiles2.length; i4++) {
                                if (listFiles2[i4].getName().equals(d2)) {
                                    a aVar2 = new a(listFiles2[i4], str, listFiles2[i4].getLink());
                                    if (fTPClient == null) {
                                        return aVar2;
                                    }
                                    try {
                                        fTPClient.logout();
                                        fTPClient.disconnect();
                                        return aVar2;
                                    } catch (IOException e5) {
                                        return aVar2;
                                    }
                                }
                            }
                        } else {
                            if (!i.contains(" ")) {
                                break;
                            }
                            i = i.replace(" ", "\\ ");
                        }
                    }
                } catch (Exception e6) {
                }
                if (fTPClient != null) {
                    try {
                        fTPClient.logout();
                        fTPClient.disconnect();
                    } catch (IOException e7) {
                    }
                }
            } catch (Exception e8) {
                if (fTPClient != null) {
                    try {
                        fTPClient.logout();
                        fTPClient.disconnect();
                    } catch (IOException e9) {
                    }
                }
                return null;
            }
        } catch (FTPConnectionClosedException e10) {
            fTPClient2 = fTPClient;
            if (fTPClient2 != null) {
                try {
                    fTPClient2.logout();
                    fTPClient2.disconnect();
                } catch (IOException e11) {
                }
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            if (fTPClient != null) {
                try {
                    fTPClient.logout();
                    fTPClient.disconnect();
                } catch (IOException e12) {
                }
            }
            throw th;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v11, types: [org.apache.commons.net.ftp.FTPClient] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13, types: [org.apache.commons.net.ftp.FTPClient] */
    /* JADX WARN: Type inference failed for: r1v14, types: [org.apache.commons.net.ftp.FTPClient] */
    /* JADX WARN: Type inference failed for: r1v15, types: [org.apache.commons.net.ftp.FTPClient] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17, types: [org.apache.commons.net.ftp.FTPClient] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [org.apache.commons.net.ftp.FTPClient] */
    @Override // com.estrongs.old.fs.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public OutputStream i(String str) {
        Object obj;
        Throwable th;
        IOException e;
        OutputStream outputStream;
        String h = ak.h(str);
        String i = ak.i(str);
        ?? r1 = 1;
        try {
            try {
                r1 = a(h, true);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FTPConnectionClosedException e2) {
            r1 = 0;
            outputStream = null;
        } catch (IOException e3) {
            e = e3;
        } catch (Throwable th3) {
            obj = null;
            th = th3;
            r1 = 0;
        }
        if (r1 == 0) {
            if (0 != 0) {
                return null;
            }
            if (r1 != 0) {
                try {
                    r1.logout();
                    r1.disconnect();
                } catch (Exception e4) {
                    return null;
                }
            }
            FTPClient a2 = a(h, true);
            if (a2 == null || a2.storeFileStream(i) != null) {
                return null;
            }
            a2.changeWorkingDirectory(ak.aY(i));
            a2.storeFileStream(ak.d(i));
            return null;
        }
        try {
            outputStream = r1.storeFileStream(i);
            if (outputStream == null) {
                try {
                    r1.changeWorkingDirectory(ak.aY(i));
                    outputStream = r1.storeFileStream(ak.d(i));
                } catch (FTPConnectionClosedException e5) {
                    if (outputStream == null) {
                        if (r1 != 0) {
                            try {
                                r1.logout();
                                r1.disconnect();
                            } catch (Exception e6) {
                            }
                        }
                        r1 = a(h, true);
                        if (r1 != 0 && (outputStream = r1.storeFileStream(i)) == null) {
                            r1.changeWorkingDirectory(ak.aY(i));
                            outputStream = r1.storeFileStream(ak.d(i));
                        }
                    }
                    if (outputStream == null) {
                    }
                } catch (IOException e7) {
                    e = e7;
                    throw new FileSystemException(e);
                }
            }
            if (outputStream == null) {
                if (r1 != 0) {
                    try {
                        r1.logout();
                        r1.disconnect();
                    } catch (Exception e8) {
                    }
                }
                r1 = a(h, true);
                if (r1 != 0 && (outputStream = r1.storeFileStream(i)) == null) {
                    r1.changeWorkingDirectory(ak.aY(i));
                    outputStream = r1.storeFileStream(ak.d(i));
                }
            }
        } catch (FTPConnectionClosedException e9) {
            outputStream = null;
        } catch (IOException e10) {
            e = e10;
        } catch (Throwable th4) {
            obj = null;
            th = th4;
            if (obj == null) {
                if (r1 != 0) {
                    try {
                        r1.logout();
                        r1.disconnect();
                    } catch (Exception e11) {
                        throw th;
                    }
                }
                FTPClient a3 = a(h, true);
                if (a3 != null && a3.storeFileStream(i) == null) {
                    a3.changeWorkingDirectory(ak.aY(i));
                    a3.storeFileStream(ak.d(i));
                }
            }
            throw th;
        }
        if (outputStream == null) {
            return new e(outputStream, r1);
        }
        return null;
    }
}
