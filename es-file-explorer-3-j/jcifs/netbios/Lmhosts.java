package jcifs.netbios;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Hashtable;
import jcifs.Config;
import jcifs.smb.SmbFileInputStream;
import jcifs.util.LogStream;

/* loaded from: classes.dex */
public class Lmhosts {
    private static int alt;
    private static final String FILENAME = Config.getProperty("jcifs.netbios.lmhosts");
    private static final Hashtable TAB = new Hashtable();
    private static long lastModified = 1;
    private static LogStream log = LogStream.getInstance();

    public static synchronized NbtAddress getByName(String str) {
        NbtAddress byName;
        synchronized (Lmhosts.class) {
            byName = getByName(new Name(str, 32, null));
        }
        return byName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized NbtAddress getByName(Name name) {
        NbtAddress nbtAddress;
        NbtAddress nbtAddress2;
        synchronized (Lmhosts.class) {
            nbtAddress = null;
            try {
                if (FILENAME != null) {
                    File file = new File(FILENAME);
                    long lastModified2 = file.lastModified();
                    if (lastModified2 > lastModified) {
                        lastModified = lastModified2;
                        TAB.clear();
                        alt = 0;
                        populate(new FileReader(file));
                    }
                    nbtAddress2 = (NbtAddress) TAB.get(name);
                } else {
                    nbtAddress2 = null;
                }
                nbtAddress = nbtAddress2;
            } catch (FileNotFoundException e) {
                LogStream logStream = log;
                if (LogStream.level > 1) {
                    log.println("lmhosts file: " + FILENAME);
                    e.printStackTrace(log);
                }
            } catch (IOException e2) {
                LogStream logStream2 = log;
                if (LogStream.level > 0) {
                    e2.printStackTrace(log);
                }
            }
        }
        return nbtAddress;
    }

    static void populate(Reader reader) {
        String readLine;
        int i;
        BufferedReader bufferedReader = new BufferedReader(reader);
        while (true) {
            String readLine2 = bufferedReader.readLine();
            if (readLine2 == null) {
                return;
            }
            String trim = readLine2.toUpperCase().trim();
            if (trim.length() != 0) {
                if (trim.charAt(0) == '#') {
                    if (trim.startsWith("#INCLUDE ")) {
                        String str = "smb:" + trim.substring(trim.indexOf(92)).replace('\\', '/');
                        if (alt > 0) {
                            try {
                                populate(new InputStreamReader(new SmbFileInputStream(str)));
                                alt--;
                                do {
                                    readLine = bufferedReader.readLine();
                                    if (readLine != null) {
                                    }
                                } while (!readLine.toUpperCase().trim().startsWith("#END_ALTERNATE"));
                            } catch (IOException e) {
                                log.println("lmhosts URL: " + str);
                                e.printStackTrace(log);
                            }
                        } else {
                            populate(new InputStreamReader(new SmbFileInputStream(str)));
                        }
                    } else if (trim.startsWith("#BEGIN_ALTERNATE")) {
                        alt++;
                    } else if (trim.startsWith("#END_ALTERNATE") && alt > 0) {
                        alt--;
                        throw new IOException("no lmhosts alternate includes loaded");
                    }
                } else if (Character.isDigit(trim.charAt(0))) {
                    char[] charArray = trim.toCharArray();
                    char c = '.';
                    int i2 = 0;
                    int i3 = 0;
                    while (i2 < charArray.length && c == '.') {
                        int i4 = i2;
                        int i5 = 0;
                        while (i4 < charArray.length) {
                            char c2 = charArray[i4];
                            if (c2 < '0' || c2 > '9') {
                                c = c2;
                                break;
                            }
                            i4++;
                            i5 = ((i5 * 10) + c2) - 48;
                            c = c2;
                        }
                        i3 = (i3 << 8) + i5;
                        i2 = i4 + 1;
                    }
                    while (true) {
                        i = i2;
                        if (i >= charArray.length || !Character.isWhitespace(charArray[i])) {
                            break;
                        } else {
                            i2 = i + 1;
                        }
                    }
                    int i6 = i;
                    while (i6 < charArray.length && !Character.isWhitespace(charArray[i6])) {
                        i6++;
                    }
                    Name name = new Name(trim.substring(i, i6), 32, null);
                    TAB.put(name, new NbtAddress(name, i3, false, 0, false, false, true, true, NbtAddress.UNKNOWN_MAC_ADDRESS));
                }
            }
        }
    }
}
