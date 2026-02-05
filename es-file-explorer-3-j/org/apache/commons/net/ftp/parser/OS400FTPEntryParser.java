package org.apache.commons.net.ftp.parser;

import java.text.ParseException;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;

/* loaded from: classes.dex */
public class OS400FTPEntryParser extends ConfigurableFTPFileEntryParserImpl {
    private static final String DEFAULT_DATE_FORMAT = "yy/MM/dd HH:mm:ss";
    private static final String REGEX = "(\\S+)\\s+(\\d+)\\s+(\\S+)\\s+(\\S+)\\s+(\\*\\S+)\\s+(\\S+/?)\\s*";

    public OS400FTPEntryParser() {
        this(null);
    }

    public OS400FTPEntryParser(FTPClientConfig fTPClientConfig) {
        super(REGEX);
        configure(fTPClientConfig);
    }

    @Override // org.apache.commons.net.ftp.parser.ConfigurableFTPFileEntryParserImpl
    protected FTPClientConfig getDefaultConfiguration() {
        return new FTPClientConfig(FTPClientConfig.SYST_OS400, DEFAULT_DATE_FORMAT, null, null, null, null);
    }

    @Override // org.apache.commons.net.ftp.FTPFileEntryParser
    public FTPFile parseFTPEntry(String str) {
        int i = 1;
        FTPFile fTPFile = new FTPFile();
        fTPFile.setRawListing(str);
        if (!matches(str)) {
            return null;
        }
        String group = group(1);
        String group2 = group(2);
        String str2 = String.valueOf(group(3)) + " " + group(4);
        String group3 = group(5);
        String group4 = group(6);
        try {
            fTPFile.setTimestamp(super.parseTimestamp(str2));
        } catch (ParseException e) {
        }
        if (group3.equalsIgnoreCase("*STMF")) {
            i = 0;
        } else if (!group3.equalsIgnoreCase("*DIR")) {
            i = 3;
        }
        fTPFile.setType(i);
        fTPFile.setUser(group);
        try {
            fTPFile.setSize(Long.parseLong(group2));
        } catch (NumberFormatException e2) {
        }
        String substring = group4.endsWith("/") ? group4.substring(0, group4.length() - 1) : group4;
        int lastIndexOf = substring.lastIndexOf(47);
        if (lastIndexOf > -1) {
            substring = substring.substring(lastIndexOf + 1);
        }
        fTPFile.setName(substring);
        return fTPFile;
    }
}
