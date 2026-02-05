package org.apache.commons.net.ftp.parser;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPFileEntryParserImpl;

/* loaded from: classes.dex */
public class MLSxEntryParser extends FTPFileEntryParserImpl {
    private static final MLSxEntryParser PARSER = new MLSxEntryParser();
    private static final HashMap<String, Integer> TYPE_TO_INT = new HashMap<>();
    private static int[] UNIX_GROUPS;
    private static int[][] UNIX_PERMS;

    static {
        TYPE_TO_INT.put("file", 0);
        TYPE_TO_INT.put("cdir", 1);
        TYPE_TO_INT.put("pdir", 1);
        TYPE_TO_INT.put("dir", 1);
        UNIX_GROUPS = new int[]{0, 1, 2};
        UNIX_PERMS = new int[][]{new int[0], new int[]{2}, new int[]{1}, new int[]{2, 1}, new int[1], new int[]{0, 2}, new int[]{0, 1}, new int[]{0, 1, 2}};
    }

    private void doUnixPerms(FTPFile fTPFile, String str) {
        for (char c : str.toCharArray()) {
            switch (c) {
                case 'a':
                    fTPFile.setPermission(0, 1, true);
                    break;
                case 'c':
                    fTPFile.setPermission(0, 1, true);
                    break;
                case 'd':
                    fTPFile.setPermission(0, 1, true);
                    break;
                case 'e':
                    fTPFile.setPermission(0, 0, true);
                    break;
                case 'l':
                    fTPFile.setPermission(0, 2, true);
                    break;
                case 'm':
                    fTPFile.setPermission(0, 1, true);
                    break;
                case 'p':
                    fTPFile.setPermission(0, 1, true);
                    break;
                case 'r':
                    fTPFile.setPermission(0, 0, true);
                    break;
                case 'w':
                    fTPFile.setPermission(0, 1, true);
                    break;
            }
        }
    }

    public static MLSxEntryParser getInstance() {
        return PARSER;
    }

    public static FTPFile parseEntry(String str) {
        return PARSER.parseFTPEntry(str);
    }

    @Override // org.apache.commons.net.ftp.FTPFileEntryParser
    public FTPFile parseFTPEntry(String str) {
        String[] split = str.split(" ", 2);
        if (split.length != 2) {
            return null;
        }
        FTPFile fTPFile = new FTPFile();
        fTPFile.setRawListing(str);
        fTPFile.setName(split[1]);
        String[] split2 = split[0].split(";");
        boolean contains = split[0].toLowerCase(Locale.ENGLISH).contains("unix.mode=");
        for (String str2 : split2) {
            String[] split3 = str2.split("=");
            if (split3.length == 2) {
                String lowerCase = split3[0].toLowerCase(Locale.ENGLISH);
                String str3 = split3[1];
                String lowerCase2 = str3.toLowerCase(Locale.ENGLISH);
                if ("size".equals(lowerCase)) {
                    fTPFile.setSize(Long.parseLong(str3));
                } else if ("sizd".equals(lowerCase)) {
                    fTPFile.setSize(Long.parseLong(str3));
                } else if ("modify".equals(lowerCase)) {
                    SimpleDateFormat simpleDateFormat = str3.contains(".") ? new SimpleDateFormat("yyyyMMddHHmmss.SSS") : new SimpleDateFormat("yyyyMMddHHmmss");
                    TimeZone timeZone = TimeZone.getTimeZone("GMT");
                    simpleDateFormat.setTimeZone(timeZone);
                    GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone);
                    try {
                        gregorianCalendar.setTime(simpleDateFormat.parse(str3));
                    } catch (ParseException e) {
                    }
                    fTPFile.setTimestamp(gregorianCalendar);
                } else if ("type".equals(lowerCase)) {
                    Integer num = TYPE_TO_INT.get(lowerCase2);
                    if (num == null) {
                        fTPFile.setType(3);
                    } else {
                        fTPFile.setType(num.intValue());
                    }
                } else if (lowerCase.startsWith("unix.")) {
                    String lowerCase3 = lowerCase.substring("unix.".length()).toLowerCase(Locale.ENGLISH);
                    if ("group".equals(lowerCase3)) {
                        fTPFile.setGroup(str3);
                    } else if ("owner".equals(lowerCase3)) {
                        fTPFile.setUser(str3);
                    } else if ("mode".equals(lowerCase3)) {
                        int length = str3.length() - 3;
                        int i = 0;
                        while (true) {
                            int i2 = i;
                            if (i2 < 3) {
                                int charAt = str3.charAt(length + i2) - '0';
                                if (charAt >= 0 && charAt <= 7) {
                                    int[] iArr = UNIX_PERMS[charAt];
                                    for (int i3 : iArr) {
                                        fTPFile.setPermission(UNIX_GROUPS[i2], i3, true);
                                    }
                                }
                                i = i2 + 1;
                            }
                        }
                    }
                } else if (!contains && "perm".equals(lowerCase)) {
                    doUnixPerms(fTPFile, lowerCase2);
                }
            }
        }
        return fTPFile;
    }
}
