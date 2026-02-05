package org.apache.tika.parser.mp3;

import java.io.InputStream;
import java.util.ArrayList;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.AbstractParser;
import org.apache.tika.parser.mp3.ID3Tags;

/* loaded from: classes.dex */
public class Mp3Parser extends AbstractParser {
    public static final String ALBUM = "xmpDM:album";
    public static final String ARTIST = "artist";
    public static final String TITLE = "title";
    private static final long serialVersionUID = 8537074922934844370L;

    /* loaded from: classes.dex */
    public class ID3TagsAndAudio {
        private AudioFrame audio;
        private LyricsHandler lyrics;
        private ID3Tags[] tags;

        protected ID3TagsAndAudio() {
        }
    }

    protected static ID3TagsAndAudio getAllTagHandlers(InputStream inputStream) {
        AudioFrame audioFrame = null;
        ID3v22Handler iD3v22Handler = null;
        ID3v23Handler iD3v23Handler = null;
        ID3v24Handler iD3v24Handler = null;
        while (true) {
            MP3Frame createFrameIfPresent = ID3v2Frame.createFrameIfPresent(inputStream);
            if (createFrameIfPresent == null || audioFrame != null) {
                break;
            }
            if (createFrameIfPresent instanceof ID3v2Frame) {
                ID3v2Frame iD3v2Frame = (ID3v2Frame) createFrameIfPresent;
                if (iD3v2Frame.getMajorVersion() == 4) {
                    iD3v24Handler = new ID3v24Handler(iD3v2Frame);
                } else if (iD3v2Frame.getMajorVersion() == 3) {
                    iD3v23Handler = new ID3v23Handler(iD3v2Frame);
                } else if (iD3v2Frame.getMajorVersion() == 2) {
                    iD3v22Handler = new ID3v22Handler(iD3v2Frame);
                }
                iD3v24Handler = iD3v24Handler;
                iD3v23Handler = iD3v23Handler;
                iD3v22Handler = iD3v22Handler;
            } else if (createFrameIfPresent instanceof AudioFrame) {
                audioFrame = (AudioFrame) createFrameIfPresent;
            }
        }
        LyricsHandler lyricsHandler = new LyricsHandler(inputStream);
        ID3v1Handler iD3v1Handler = lyricsHandler.id3v1;
        ArrayList arrayList = new ArrayList();
        if (iD3v24Handler != null && iD3v24Handler.getTagsPresent()) {
            arrayList.add(iD3v24Handler);
        }
        if (iD3v23Handler != null && iD3v23Handler.getTagsPresent()) {
            arrayList.add(iD3v23Handler);
        }
        if (iD3v22Handler != null && iD3v22Handler.getTagsPresent()) {
            arrayList.add(iD3v22Handler);
        }
        if (iD3v1Handler != null && iD3v1Handler.getTagsPresent()) {
            arrayList.add(iD3v1Handler);
        }
        ID3TagsAndAudio iD3TagsAndAudio = new ID3TagsAndAudio();
        iD3TagsAndAudio.audio = audioFrame;
        iD3TagsAndAudio.lyrics = lyricsHandler;
        iD3TagsAndAudio.tags = (ID3Tags[]) arrayList.toArray(new ID3Tags[arrayList.size()]);
        return iD3TagsAndAudio;
    }

    @Override // org.apache.tika.parser.AbstractParser, org.apache.tika.parser.Parser
    public void parse(InputStream inputStream, Metadata metadata) {
        metadata.set(Metadata.CONTENT_TYPE, "audio/mpeg");
        metadata.set("xmpDM:audioCompressor", "MP3");
        ID3TagsAndAudio allTagHandlers = getAllTagHandlers(inputStream);
        if (allTagHandlers.tags.length > 0) {
            CompositeTagHandler compositeTagHandler = new CompositeTagHandler(allTagHandlers.tags);
            metadata.set("title", compositeTagHandler.getTitle());
            metadata.set(ARTIST, compositeTagHandler.getArtist());
            metadata.set("xmpDM:artist", compositeTagHandler.getArtist());
            metadata.set("xmpDM:composer", compositeTagHandler.getComposer());
            metadata.set(ALBUM, compositeTagHandler.getAlbum());
            metadata.set("xmpDM:releaseDate", compositeTagHandler.getYear());
            metadata.set("xmpDM:genre", compositeTagHandler.getGenre());
            ArrayList arrayList = new ArrayList();
            for (ID3Tags.ID3Comment iD3Comment : compositeTagHandler.getComments()) {
                StringBuffer stringBuffer = new StringBuffer();
                if (iD3Comment.getLanguage() != null) {
                    stringBuffer.append(iD3Comment.getLanguage());
                    stringBuffer.append(" - ");
                }
                if (iD3Comment.getDescription() != null) {
                    stringBuffer.append(iD3Comment.getDescription());
                    if (iD3Comment.getText() != null) {
                        stringBuffer.append("\n");
                    }
                }
                if (iD3Comment.getText() != null) {
                    stringBuffer.append(iD3Comment.getText());
                }
                arrayList.add(stringBuffer.toString());
                metadata.add("xmpDM:logComment", stringBuffer.toString());
            }
            if (compositeTagHandler.getTrackNumber() != null) {
                metadata.set("xmpDM:trackNumber", compositeTagHandler.getTrackNumber());
            }
        }
        if (allTagHandlers.audio != null) {
            metadata.set("samplerate", String.valueOf(allTagHandlers.audio.getSampleRate()));
            metadata.set("channels", String.valueOf(allTagHandlers.audio.getChannels()));
            metadata.set("version", allTagHandlers.audio.getVersion());
            metadata.set("xmpDM:audioSampleRate", Integer.toString(allTagHandlers.audio.getSampleRate()));
            if (allTagHandlers.audio.getChannels() == 1) {
                metadata.set("xmpDM:audioChannelType", "Mono");
                return;
            }
            if (allTagHandlers.audio.getChannels() == 2) {
                metadata.set("xmpDM:audioChannelType", "Stereo");
            } else if (allTagHandlers.audio.getChannels() == 5) {
                metadata.set("xmpDM:audioChannelType", "5.1");
            } else if (allTagHandlers.audio.getChannels() == 7) {
                metadata.set("xmpDM:audioChannelType", "7.1");
            }
        }
    }
}
