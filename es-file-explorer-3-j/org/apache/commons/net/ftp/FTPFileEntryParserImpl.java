package org.apache.commons.net.ftp;

import java.io.BufferedReader;
import java.util.List;

/* loaded from: classes.dex */
public abstract class FTPFileEntryParserImpl implements FTPFileEntryParser {
    @Override // org.apache.commons.net.ftp.FTPFileEntryParser
    public List<String> preParse(List<String> list) {
        return list;
    }

    @Override // org.apache.commons.net.ftp.FTPFileEntryParser
    public String readNextEntry(BufferedReader bufferedReader) {
        return bufferedReader.readLine();
    }
}
