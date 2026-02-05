package org.apache.tika.parser.mp3;

import java.util.ArrayList;
import java.util.List;
import org.apache.tika.parser.mp3.ID3Tags;
import org.apache.tika.parser.mp3.ID3v2Frame;

/* loaded from: classes.dex */
public class ID3v24Handler implements ID3Tags {
    private String album;
    private String artist;
    private List<ID3Tags.ID3Comment> comments = new ArrayList();
    private String composer;
    private String genre;
    private String title;
    private String trackNumber;
    private String year;

    /* loaded from: classes.dex */
    class RawV24TagIterator extends ID3v2Frame.RawTagIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private RawV24TagIterator(ID3v2Frame iD3v2Frame) {
            super(4, 4, 1, 2);
            iD3v2Frame.getClass();
        }
    }

    public ID3v24Handler(ID3v2Frame iD3v2Frame) {
        RawV24TagIterator rawV24TagIterator = new RawV24TagIterator(iD3v2Frame);
        while (rawV24TagIterator.hasNext()) {
            ID3v2Frame.RawTag next = rawV24TagIterator.next();
            if (next.name.equals("TIT2")) {
                this.title = getTagString(next.data, 0, next.data.length);
            } else if (next.name.equals("TPE1")) {
                this.artist = getTagString(next.data, 0, next.data.length);
            } else if (next.name.equals("TALB")) {
                this.album = getTagString(next.data, 0, next.data.length);
            } else if (next.name.equals("TYER")) {
                this.year = getTagString(next.data, 0, next.data.length);
            } else if (next.name.equals("TDRC")) {
                if (this.year == null) {
                    this.year = getTagString(next.data, 0, next.data.length);
                }
            } else if (next.name.equals("TCOM")) {
                this.composer = getTagString(next.data, 0, next.data.length);
            } else if (next.name.equals("COMM")) {
                this.comments.add(getComment(next.data, 0, next.data.length));
            } else if (next.name.equals("TRCK")) {
                this.trackNumber = getTagString(next.data, 0, next.data.length);
            } else if (next.name.equals("TCON")) {
                this.genre = ID3v22Handler.extractGenre(getTagString(next.data, 0, next.data.length));
            }
        }
    }

    private ID3Tags.ID3Comment getComment(byte[] bArr, int i, int i2) {
        return ID3v2Frame.getComment(bArr, i, i2);
    }

    private String getTagString(byte[] bArr, int i, int i2) {
        return ID3v2Frame.getTagString(bArr, i, i2);
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
        return this.comments;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public String getComposer() {
        return this.composer;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public String getGenre() {
        return this.genre;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public boolean getTagsPresent() {
        return true;
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
