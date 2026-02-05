package org.apache.tika.parser.mp3;

import java.util.ArrayList;
import java.util.List;
import org.apache.tika.parser.mp3.ID3Tags;
import org.apache.tika.parser.mp3.ID3v2Frame;

/* loaded from: classes.dex */
public class ID3v22Handler implements ID3Tags {
    private String album;
    private String artist;
    private List<ID3Tags.ID3Comment> comments = new ArrayList();
    private String composer;
    private String genre;
    private String title;
    private String trackNumber;
    private String year;

    /* loaded from: classes.dex */
    class RawV22TagIterator extends ID3v2Frame.RawTagIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private RawV22TagIterator(ID3v2Frame iD3v2Frame) {
            super(3, 3, 1, 0);
            iD3v2Frame.getClass();
        }
    }

    public ID3v22Handler(ID3v2Frame iD3v2Frame) {
        RawV22TagIterator rawV22TagIterator = new RawV22TagIterator(iD3v2Frame);
        while (rawV22TagIterator.hasNext()) {
            ID3v2Frame.RawTag next = rawV22TagIterator.next();
            if (next.name.equals("TT2")) {
                this.title = getTagString(next.data, 0, next.data.length);
            } else if (next.name.equals("TP1")) {
                this.artist = getTagString(next.data, 0, next.data.length);
            } else if (next.name.equals("TAL")) {
                this.album = getTagString(next.data, 0, next.data.length);
            } else if (next.name.equals("TYE")) {
                this.year = getTagString(next.data, 0, next.data.length);
            } else if (next.name.equals("TCM")) {
                this.composer = getTagString(next.data, 0, next.data.length);
            } else if (next.name.equals("COM")) {
                this.comments.add(getComment(next.data, 0, next.data.length));
            } else if (next.name.equals("TRK")) {
                this.trackNumber = getTagString(next.data, 0, next.data.length);
            } else if (next.name.equals("TCO")) {
                this.genre = extractGenre(getTagString(next.data, 0, next.data.length));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String extractGenre(String str) {
        int indexOf = str.indexOf("(");
        int indexOf2 = str.indexOf(")");
        if (indexOf == -1 && indexOf2 == -1) {
            return str;
        }
        if (indexOf >= indexOf2) {
            return null;
        }
        String trim = str.substring(0, indexOf).trim();
        try {
            return ID3Tags.GENRES[Integer.parseInt(str.substring(indexOf + 1, indexOf2))];
        } catch (ArrayIndexOutOfBoundsException e) {
            return trim;
        } catch (NumberFormatException e2) {
            return trim;
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
