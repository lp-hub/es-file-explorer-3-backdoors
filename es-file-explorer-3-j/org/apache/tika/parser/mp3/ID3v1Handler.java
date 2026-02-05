package org.apache.tika.parser.mp3;

import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.net.ftp.FTP;
import org.apache.tika.exception.TikaException;
import org.apache.tika.parser.mp3.ID3Tags;
import org.xml.sax.ContentHandler;

/* loaded from: classes.dex */
public class ID3v1Handler implements ID3Tags {
    private String album;
    private String artist;
    private ID3Tags.ID3Comment comment;
    boolean found;
    private String genre;
    private String title;
    private String trackNumber;
    private String year;

    public ID3v1Handler(InputStream inputStream, ContentHandler contentHandler) {
        this(LyricsHandler.getSuffix(inputStream, 128));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ID3v1Handler(byte[] bArr) {
        this.found = false;
        if (bArr.length == 128 && bArr[0] == 84 && bArr[1] == 65 && bArr[2] == 71) {
            this.found = true;
            this.title = getString(bArr, 3, 33);
            this.artist = getString(bArr, 33, 63);
            this.album = getString(bArr, 63, 93);
            this.year = getString(bArr, 93, 97);
            this.comment = new ID3Tags.ID3Comment(getString(bArr, 97, 127));
            this.genre = GENRES[Math.min(bArr[127] & 255, GENRES.length - 1)];
            if (bArr[125] != 0 || bArr[126] == 0) {
                return;
            }
            this.trackNumber = Integer.toString(bArr[126] & 255);
        }
    }

    private static String getString(byte[] bArr, int i, int i2) {
        int i3 = i;
        while (i3 < i2 && bArr[i3] != 0) {
            i3++;
        }
        while (i < i3 && bArr[i3 - 1] <= 32) {
            i3--;
        }
        while (i < i3 && bArr[i] <= 32) {
            i++;
        }
        try {
            return new String(bArr, i, i3 - i, FTP.DEFAULT_CONTROL_ENCODING);
        } catch (UnsupportedEncodingException e) {
            throw new TikaException("ISO-8859-1 encoding is not available", e);
        }
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public String getAlbum() {
        return this.album;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public String getArtist() {
        return this.artist;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public List<ID3Tags.ID3Comment> getComments() {
        return Arrays.asList(this.comment);
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public String getComposer() {
        return null;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public String getGenre() {
        return this.genre;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public boolean getTagsPresent() {
        return this.found;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public String getTitle() {
        return this.title;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public String getTrackNumber() {
        return this.trackNumber;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public String getYear() {
        return this.year;
    }
}
