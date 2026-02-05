package org.apache.commons.net.ftp.parser;

import java.text.ParseException;
import org.apache.commons.net.ftp.Configurable;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;

/* loaded from: classes.dex */
public class NTFTPEntryParser extends ConfigurableFTPFileEntryParserImpl {
    private static final String DEFAULT_DATE_FORMAT = "MM-dd-yy hh:mma";
    private static final String DEFAULT_DATE_FORMAT2 = "MM-dd-yy kk:mm";
    private static final String REGEX = "(\\S+)\\s+(\\S+)\\s+(?:(<DIR>)|([0-9]+))\\s+(\\S.*)";
    private FTPTimestampParser timestampParser;

    public NTFTPEntryParser() {
        this(null);
    }

    public NTFTPEntryParser(FTPClientConfig fTPClientConfig) {
        super(REGEX);
        configure(fTPClientConfig);
        FTPClientConfig fTPClientConfig2 = new FTPClientConfig(FTPClientConfig.SYST_NT, DEFAULT_DATE_FORMAT2, null, null, null, null);
        fTPClientConfig2.setDefaultDateFormatStr(DEFAULT_DATE_FORMAT2);
        this.timestampParser = new FTPTimestampParserImpl();
        ((Configurable) this.timestampParser).configure(fTPClientConfig2);
    }

    @Override // org.apache.commons.net.ftp.parser.ConfigurableFTPFileEntryParserImpl
    public FTPClientConfig getDefaultConfiguration() {
        return new FTPClientConfig(FTPClientConfig.SYST_NT, DEFAULT_DATE_FORMAT, null, null, null, null);
    }

    @Override // org.apache.commons.net.ftp.FTPFileEntryParser
    public FTPFile parseFTPEntry(String str) {
        FTPFile fTPFile = new FTPFile();
        fTPFile.setRawListing(str);
        if (!matches(str)) {
            return null;
        }
        String str2 = String.valueOf(group(1)) + " " + group(2);
        String group = group(3);
        String group2 = group(4);
        String group3 = group(5);
        try {
            fTPFile.setTimestamp(super.parseTimestamp(str2));
        } catch (ParseException e) {
            try {
                fTPFile.setTimestamp(this.timestampParser.parseTimestamp(str2));
            } catch (ParseException e2) {
            }
        }
        if (group3 == null || group3.equals(".") || group3.equals("..")) {
            return null;
        }
        fTPFile.setName(group3);
        if ("<DIR>".equals(group)) {
            fTPFile.setType(1);
            fTPFile.setSize(0L);
            return fTPFile;
        }
        fTPFile.setType(0);
        if (group2 == null) {
            return fTPFile;
        }
        fTPFile.setSize(Long.parseLong(group2));
        return fTPFile;
    }
}
