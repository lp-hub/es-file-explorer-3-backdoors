package org.apache.commons.net.ftp.parser;

import java.text.ParseException;
import java.util.List;
import java.util.ListIterator;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;

/* loaded from: classes.dex */
public class UnixFTPEntryParser extends ConfigurableFTPFileEntryParserImpl {
    static final String DEFAULT_DATE_FORMAT = "MMM d yyyy";
    static final String DEFAULT_RECENT_DATE_FORMAT = "MMM d HH:mm";
    private static final String REGEX = "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)";
    static final String NUMERIC_DATE_FORMAT = "yyyy-MM-dd HH:mm";
    public static final FTPClientConfig NUMERIC_DATE_CONFIG = new FTPClientConfig(FTPClientConfig.SYST_UNIX, NUMERIC_DATE_FORMAT, null, null, null, null);

    public UnixFTPEntryParser() {
        this(null);
    }

    public UnixFTPEntryParser(FTPClientConfig fTPClientConfig) {
        super(REGEX);
        configure(fTPClientConfig);
    }

    @Override // org.apache.commons.net.ftp.parser.ConfigurableFTPFileEntryParserImpl
    protected FTPClientConfig getDefaultConfiguration() {
        return new FTPClientConfig(FTPClientConfig.SYST_UNIX, "MMM d yyyy", "MMM d HH:mm", null, null, null);
    }

    @Override // org.apache.commons.net.ftp.FTPFileEntryParser
    public FTPFile parseFTPEntry(String str) {
        int i;
        FTPFile fTPFile = new FTPFile();
        fTPFile.setRawListing(str);
        boolean z = false;
        if (!matches(str)) {
            return null;
        }
        String group = group(1);
        String group2 = group(15);
        String group3 = group(16);
        String group4 = group(17);
        String group5 = group(18);
        String str2 = String.valueOf(group(19)) + " " + group(20);
        String group6 = group(21);
        String group7 = group(22);
        try {
            fTPFile.setTimestamp(super.parseTimestamp(str2));
        } catch (ParseException e) {
        }
        switch (group.charAt(0)) {
            case 'b':
            case 'c':
                z = true;
            case '-':
            case 'f':
                i = 0;
                break;
            case 'd':
                i = 1;
                break;
            case 'e':
                i = 2;
                break;
            case 'l':
                i = 2;
                break;
            default:
                i = 3;
                break;
        }
        fTPFile.setType(i);
        int i2 = 4;
        int i3 = 0;
        while (true) {
            int i4 = i2;
            int i5 = i3;
            if (i5 >= 3) {
                if (!z) {
                    try {
                        fTPFile.setHardLinkCount(Integer.parseInt(group2));
                    } catch (NumberFormatException e2) {
                    }
                }
                fTPFile.setUser(group3);
                fTPFile.setGroup(group4);
                try {
                    fTPFile.setSize(Long.parseLong(group5));
                } catch (NumberFormatException e3) {
                }
                if (group7 == null) {
                    fTPFile.setName(group6);
                } else {
                    String str3 = String.valueOf(group6) + group7;
                    if (i == 2) {
                        int indexOf = str3.indexOf(" -> ");
                        if (indexOf == -1) {
                            fTPFile.setName(str3);
                        } else {
                            fTPFile.setName(str3.substring(0, indexOf));
                            fTPFile.setLink(str3.substring(indexOf + 4));
                        }
                    } else {
                        fTPFile.setName(str3);
                    }
                }
                return fTPFile;
            }
            fTPFile.setPermission(i5, 0, !group(i4).equals("-"));
            fTPFile.setPermission(i5, 1, !group(i4 + 1).equals("-"));
            String group8 = group(i4 + 2);
            if (group8.equals("-") || Character.isUpperCase(group8.charAt(0))) {
                fTPFile.setPermission(i5, 2, false);
            } else {
                fTPFile.setPermission(i5, 2, true);
            }
            i3 = i5 + 1;
            i2 = i4 + 4;
        }
    }

    @Override // org.apache.commons.net.ftp.FTPFileEntryParserImpl, org.apache.commons.net.ftp.FTPFileEntryParser
    public List<String> preParse(List<String> list) {
        ListIterator<String> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (listIterator.next().matches("^total \\d+$")) {
                listIterator.remove();
            }
        }
        return list;
    }
}
