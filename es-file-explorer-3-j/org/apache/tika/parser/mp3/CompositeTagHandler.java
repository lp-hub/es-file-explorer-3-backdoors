package org.apache.tika.parser.mp3;

import java.util.Collections;
import java.util.List;
import org.apache.tika.parser.mp3.ID3Tags;

/* loaded from: classes.dex */
public class CompositeTagHandler implements ID3Tags {
    private ID3Tags[] tags;

    public CompositeTagHandler(ID3Tags[] iD3TagsArr) {
        this.tags = iD3TagsArr;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public String getAlbum() {
        for (ID3Tags iD3Tags : this.tags) {
            if (iD3Tags.getAlbum() != null) {
                return iD3Tags.getAlbum();
            }
        }
        return null;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public String getArtist() {
        for (ID3Tags iD3Tags : this.tags) {
            if (iD3Tags.getArtist() != null) {
                return iD3Tags.getArtist();
            }
        }
        return null;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public List<ID3Tags.ID3Comment> getComments() {
        for (ID3Tags iD3Tags : this.tags) {
            List<ID3Tags.ID3Comment> comments = iD3Tags.getComments();
            if (comments != null && comments.size() > 0) {
                return comments;
            }
        }
        return Collections.emptyList();
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public String getComposer() {
        for (ID3Tags iD3Tags : this.tags) {
            if (iD3Tags.getComposer() != null) {
                return iD3Tags.getComposer();
            }
        }
        return null;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public String getGenre() {
        for (ID3Tags iD3Tags : this.tags) {
            if (iD3Tags.getGenre() != null) {
                return iD3Tags.getGenre();
            }
        }
        return null;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public boolean getTagsPresent() {
        for (ID3Tags iD3Tags : this.tags) {
            if (iD3Tags.getTagsPresent()) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public String getTitle() {
        for (ID3Tags iD3Tags : this.tags) {
            if (iD3Tags.getTitle() != null) {
                return iD3Tags.getTitle();
            }
        }
        return null;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public String getTrackNumber() {
        for (ID3Tags iD3Tags : this.tags) {
            if (iD3Tags.getTrackNumber() != null) {
                return iD3Tags.getTrackNumber();
            }
        }
        return null;
    }

    @Override // org.apache.tika.parser.mp3.ID3Tags
    public String getYear() {
        for (ID3Tags iD3Tags : this.tags) {
            if (iD3Tags.getYear() != null) {
                return iD3Tags.getYear();
            }
        }
        return null;
    }
}
