package org.apache.commons.net.ftp.parser;

import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPFileEntryParser;
import org.apache.commons.net.ftp.FTPFileEntryParserImpl;

/* loaded from: classes.dex */
public class CompositeFileEntryParser extends FTPFileEntryParserImpl {
    private FTPFileEntryParser cachedFtpFileEntryParser = null;
    private final FTPFileEntryParser[] ftpFileEntryParsers;

    public CompositeFileEntryParser(FTPFileEntryParser[] fTPFileEntryParserArr) {
        this.ftpFileEntryParsers = fTPFileEntryParserArr;
    }

    @Override // org.apache.commons.net.ftp.FTPFileEntryParser
    public FTPFile parseFTPEntry(String str) {
        if (this.cachedFtpFileEntryParser != null) {
            FTPFile parseFTPEntry = this.cachedFtpFileEntryParser.parseFTPEntry(str);
            if (parseFTPEntry != null) {
                return parseFTPEntry;
            }
        } else {
            for (int i = 0; i < this.ftpFileEntryParsers.length; i++) {
                FTPFileEntryParser fTPFileEntryParser = this.ftpFileEntryParsers[i];
                FTPFile parseFTPEntry2 = fTPFileEntryParser.parseFTPEntry(str);
                if (parseFTPEntry2 != null) {
                    this.cachedFtpFileEntryParser = fTPFileEntryParser;
                    return parseFTPEntry2;
                }
            }
        }
        return null;
    }
}
