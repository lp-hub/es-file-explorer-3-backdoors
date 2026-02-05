package org.apache.commons.net.ftp;

import com.estrongs.android.util.g;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public class FTPListParseEngine {
    private ListIterator<String> _internalIterator;
    private FTPClient client;
    private List<String> entries;
    private final FTPFileEntryParser parser;

    public FTPListParseEngine(FTPFileEntryParser fTPFileEntryParser) {
        this.entries = new LinkedList();
        this._internalIterator = this.entries.listIterator();
        this.parser = fTPFileEntryParser;
    }

    public FTPListParseEngine(FTPFileEntryParser fTPFileEntryParser, FTPClient fTPClient) {
        this(fTPFileEntryParser);
        this.client = fTPClient;
    }

    private void readStream(InputStream inputStream, String str) {
        if (this.client != null && this.client.isNeedAutoDetectEncoding()) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedInputStream.mark(10240);
            byte[] bArr = new byte[10240];
            int read = bufferedInputStream.read(bArr);
            if (read > 0) {
                str = g.a(bArr, read);
                if (!"UTF-8".equals(str) && Charset.isSupported(str)) {
                    this.client.setControlEncoding(str);
                }
            }
            bufferedInputStream.reset();
            inputStream = bufferedInputStream;
        }
        BufferedReader bufferedReader = str == null ? new BufferedReader(new InputStreamReader(inputStream)) : new BufferedReader(new InputStreamReader(inputStream, str));
        String readNextEntry = this.parser.readNextEntry(bufferedReader);
        while (readNextEntry != null) {
            this.entries.add(readNextEntry);
            readNextEntry = this.parser.readNextEntry(bufferedReader);
        }
        bufferedReader.close();
    }

    public FTPFile[] getFiles() {
        return getFiles(FTPFileFilters.NON_NULL);
    }

    public FTPFile[] getFiles(FTPFileFilter fTPFileFilter) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.entries.iterator();
        while (it.hasNext()) {
            FTPFile parseFTPEntry = this.parser.parseFTPEntry(it.next());
            if (fTPFileFilter.accept(parseFTPEntry)) {
                arrayList.add(parseFTPEntry);
            }
        }
        return (FTPFile[]) arrayList.toArray(new FTPFile[arrayList.size()]);
    }

    public FTPFile[] getNext(int i) {
        LinkedList linkedList = new LinkedList();
        while (i > 0 && this._internalIterator.hasNext()) {
            linkedList.add(this.parser.parseFTPEntry(this._internalIterator.next()));
            i--;
        }
        return (FTPFile[]) linkedList.toArray(new FTPFile[linkedList.size()]);
    }

    public FTPFile[] getPrevious(int i) {
        LinkedList linkedList = new LinkedList();
        while (i > 0 && this._internalIterator.hasPrevious()) {
            linkedList.add(0, this.parser.parseFTPEntry(this._internalIterator.previous()));
            i--;
        }
        return (FTPFile[]) linkedList.toArray(new FTPFile[linkedList.size()]);
    }

    public boolean hasNext() {
        return this._internalIterator.hasNext();
    }

    public boolean hasPrevious() {
        return this._internalIterator.hasPrevious();
    }

    @Deprecated
    public void readServerList(InputStream inputStream) {
        readServerList(inputStream, null);
    }

    public void readServerList(InputStream inputStream, String str) {
        this.entries = new LinkedList();
        readStream(inputStream, str);
        this.parser.preParse(this.entries);
        resetIterator();
    }

    public void resetIterator() {
        this._internalIterator = this.entries.listIterator();
    }
}
