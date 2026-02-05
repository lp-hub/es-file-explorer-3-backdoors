package com.estrongs.fs.impl.o;

import android.content.Context;
import com.estrongs.a.b.l;
import com.estrongs.a.b.p;
import com.estrongs.a.q;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import com.estrongs.fs.FileExistException;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.g;
import com.estrongs.fs.h;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.util.LinkedList;
import java.util.List;
import jcifs.Config;
import jcifs.smb.SmbException;
import jcifs.smb.SmbFile;
import jcifs.smb.SmbFileInputStream;
import jcifs.smb.SmbFileOutputStream;
import jcifs.smb.SmbRandomAccessFile;

/* loaded from: classes.dex */
public class b {
    static {
        Config.registerSmbURLHandler();
    }

    public static InputStream a(String str, long j) {
        try {
            if (j == 0) {
                return g(str);
            }
            SmbFile smbFile = new SmbFile(a(str));
            com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
            if (!smbFile.exists()) {
                if (currentTask == null) {
                    return null;
                }
                currentTask.setTaskResult(2, new q(str, (Exception) null));
                return null;
            }
            if (j > smbFile.length()) {
                if (currentTask == null) {
                    return null;
                }
                currentTask.setTaskResult(7, new q("offset > filesize", (Exception) null));
                return null;
            }
            SmbRandomAccessFile smbRandomAccessFile = new SmbRandomAccessFile(smbFile, "r");
            if (j != 0) {
                smbRandomAccessFile.seek(j);
            }
            return new c(smbRandomAccessFile, smbFile.length());
        } catch (Exception e) {
            return null;
        }
    }

    public static String a(String str) {
        if (str.indexOf("@") == -1) {
            return str;
        }
        String x = ak.x(str);
        String y = ak.y(str);
        String bf = ak.bf(str);
        String B = ak.B(str);
        StringBuffer stringBuffer = new StringBuffer(B);
        if (!aw.a((CharSequence) x)) {
            if (bf == null) {
                stringBuffer.insert(ak.aT(B), e.a(x) + ":" + e.a(y) + "@");
            } else {
                stringBuffer.insert(ak.aT(B), e.a(bf) + ";" + e.a(x) + ":" + e.a(y) + "@");
            }
        }
        return stringBuffer.toString();
    }

    public static List<g> a(String str, h hVar, l<String> lVar) {
        LinkedList linkedList = new LinkedList();
        try {
            SmbFile smbFile = new SmbFile(a(str));
            if (!smbFile.exists() || !smbFile.isDirectory()) {
                return null;
            }
            com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
            SmbFile[] listFiles = smbFile.listFiles();
            if (listFiles != null) {
                for (SmbFile smbFile2 : listFiles) {
                    if (currentTask != null && currentTask.taskStopped()) {
                        return null;
                    }
                    if (smbFile2 != null) {
                        a aVar = new a(smbFile2, str + smbFile2.getName());
                        if (hVar.a(aVar)) {
                            linkedList.add(aVar);
                        }
                        lVar.a(aVar.getAbsolutePath(), new long[0]);
                        if (lVar.a()) {
                            break;
                        }
                    }
                }
            }
            return linkedList;
        } catch (SmbException e) {
            throw new FileSystemException(e);
        } catch (Throwable th) {
            throw new FileSystemException(th);
        }
    }

    public static void a(String str, g gVar) {
        try {
            new SmbFile(a(str)).setLastModified(gVar.lastModified());
        } catch (MalformedURLException e) {
            throw new FileSystemException(e);
        } catch (SmbException e2) {
            throw new FileSystemException(e2);
        }
    }

    public static boolean a(Context context, String str, p pVar) {
        try {
            pVar.a(str, new long[0]);
            SmbFile smbFile = new SmbFile(a(str));
            if (smbFile.exists()) {
                smbFile.delete();
                return true;
            }
            pVar.a(new FileNotFoundException(str));
            return false;
        } catch (MalformedURLException e) {
            throw new FileSystemException(e);
        } catch (SmbException e2) {
            throw new FileSystemException(e2);
        }
    }

    public static boolean a(String str, String str2) {
        try {
            SmbFile smbFile = new SmbFile(a(str));
            if (!smbFile.exists()) {
                throw new FileSystemException(new FileNotFoundException(ak.B(str)));
            }
            SmbFile smbFile2 = new SmbFile(a(str2));
            if (smbFile2.exists()) {
                throw new FileExistException(ak.B(str));
            }
            smbFile.renameTo(smbFile2);
            return true;
        } catch (MalformedURLException e) {
            throw new FileSystemException(e);
        } catch (SmbException e2) {
            throw new FileSystemException(e2);
        }
    }

    public static boolean a(String str, boolean z) {
        try {
            SmbFile smbFile = new SmbFile(a(str));
            if (z) {
                if (!smbFile.exists()) {
                    smbFile.mkdir();
                    return true;
                }
            } else if (!smbFile.exists()) {
                smbFile.createNewFile();
                return true;
            }
            return false;
        } catch (MalformedURLException e) {
            throw new FileSystemException(e);
        } catch (SmbException e2) {
            throw new FileSystemException(e2);
        }
    }

    public static OutputStream b(String str, long j) {
        d dVar = null;
        if (j == 0) {
            return h(str);
        }
        try {
            SmbFile smbFile = new SmbFile(a(str));
            com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
            if (smbFile.exists()) {
                if (j <= smbFile.length()) {
                    dVar = new d(smbFile, j);
                } else if (currentTask != null) {
                    currentTask.setTaskResult(7, new q("offset > filesize", (Exception) null));
                }
            } else if (currentTask != null) {
                currentTask.setTaskResult(2, new q(str, (Exception) null));
            }
            return dVar;
        } catch (Exception e) {
            throw new FileSystemException(e);
        }
    }

    public static boolean b(String str) {
        try {
            return new SmbFile(a(str)).exists();
        } catch (MalformedURLException e) {
            throw new FileSystemException(e);
        } catch (SmbException e2) {
            throw new FileSystemException(e2);
        }
    }

    public static boolean b(String str, String str2) {
        SmbFile smbFile;
        try {
            SmbFile smbFile2 = new SmbFile(a(str));
            if (!smbFile2.exists()) {
                return false;
            }
            SmbFile smbFile3 = new SmbFile(a(str2.charAt(str2.length() + (-1)) == '/' ? str2 : str2 + "/"));
            if (smbFile3.exists()) {
                smbFile = new SmbFile(ak.e(str2) + "/" + ak.d(str2) + ((int) System.currentTimeMillis()) + "/");
                smbFile2.renameTo(smbFile);
                smbFile3.delete();
            } else {
                smbFile = smbFile2;
            }
            smbFile.renameTo(smbFile3);
            return true;
        } catch (MalformedURLException e) {
            throw new FileSystemException(e);
        } catch (SmbException e2) {
            throw new FileSystemException(e2);
        }
    }

    public static boolean c(String str) {
        try {
            SmbFile smbFile = new SmbFile(a(str));
            if (smbFile.exists()) {
                return true;
            }
            smbFile.mkdirs();
            return true;
        } catch (MalformedURLException e) {
            throw new FileSystemException(e);
        } catch (SmbException e2) {
            throw new FileSystemException(e2);
        }
    }

    public static long d(String str) {
        try {
            SmbFile smbFile = new SmbFile(a(str));
            if (!smbFile.exists()) {
                throw new FileNotFoundException(ak.B(str));
            }
            if (smbFile.isFile()) {
                return smbFile.length();
            }
            return 0L;
        } catch (FileNotFoundException e) {
            throw new FileSystemException(e);
        } catch (MalformedURLException e2) {
            throw new FileSystemException(e2);
        } catch (SmbException e3) {
            throw new FileSystemException(e3);
        }
    }

    public static boolean e(String str) {
        try {
            SmbFile smbFile = new SmbFile(a(str));
            if (smbFile.exists()) {
                return smbFile.isDirectory();
            }
            return false;
        } catch (MalformedURLException e) {
            throw new FileSystemException(e);
        } catch (SmbException e2) {
            throw new FileSystemException(e2);
        }
    }

    public static com.estrongs.fs.c f(String str) {
        try {
            SmbFile smbFile = new SmbFile(a(str));
            if (!smbFile.exists()) {
                return null;
            }
            com.estrongs.fs.c cVar = new com.estrongs.fs.c(str);
            cVar.d = smbFile.isDirectory();
            if (cVar.d) {
                cVar.a(smbFile.getType());
                SmbFile[] listFiles = smbFile.listFiles();
                if (listFiles != null) {
                    for (SmbFile smbFile2 : listFiles) {
                        if (smbFile2.isDirectory()) {
                            cVar.f++;
                        } else {
                            cVar.g++;
                        }
                    }
                }
            } else {
                cVar.c = "File";
                cVar.e = smbFile.length();
            }
            cVar.j = smbFile.lastModified();
            cVar.h = smbFile.createTime();
            cVar.k = smbFile.canRead();
            cVar.l = smbFile.canWrite();
            cVar.m = smbFile.isHidden();
            return cVar;
        } catch (NullPointerException e) {
            throw new FileSystemException(e);
        } catch (MalformedURLException e2) {
            throw new FileSystemException(e2);
        } catch (SmbException e3) {
            throw new FileSystemException(e3);
        }
    }

    public static InputStream g(String str) {
        try {
            return new SmbFileInputStream(a(str));
        } catch (Exception e) {
            throw new FileSystemException(e.getMessage());
        }
    }

    public static OutputStream h(String str) {
        try {
            return new SmbFileOutputStream(a(str));
        } catch (Exception e) {
            throw new FileSystemException(e.getMessage());
        }
    }

    public static a i(String str) {
        try {
            return new a(new SmbFile(a(str)), str);
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
