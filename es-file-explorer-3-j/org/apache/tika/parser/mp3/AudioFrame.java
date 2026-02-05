package org.apache.tika.parser.mp3;

import com.estrongs.android.pop.spfs.OAuthConstants;
import java.io.InputStream;
import org.xml.sax.ContentHandler;

/* loaded from: classes.dex */
public class AudioFrame implements MP3Frame {
    private int channels;
    private int sampleRate;
    private String version;

    public AudioFrame(int i, int i2, int i3, int i4, InputStream inputStream) {
        if (i == -2 && i2 == -2 && i3 == -2 && i4 == -2) {
            i = inputStream.read();
            i2 = inputStream.read();
            i3 = inputStream.read();
            i4 = inputStream.read();
        }
        if (!isAudioHeader(i, i2, i3, i4)) {
            throw new IllegalArgumentException("Magic Audio Frame Header not found");
        }
        this.version = "MPEG 3 Layer ";
        int i5 = (i2 >> 1) & 3;
        if (i5 == 1) {
            this.version += "III";
        } else if (i5 == 2) {
            this.version += "II";
        } else if (i5 == 3) {
            this.version += "I";
        } else {
            this.version += "(reserved)";
        }
        this.version += " Version ";
        int i6 = (i2 >> 3) & 3;
        if (i6 == 0) {
            this.version += "2.5";
        } else if (i6 == 2) {
            this.version += OAuthConstants.VERSION_2;
        } else if (i6 == 3) {
            this.version += "1";
        } else {
            this.version += "(reseved)";
        }
        switch ((i3 >> 2) & 3) {
            case 0:
                this.sampleRate = 11025;
                break;
            case 1:
                this.sampleRate = 12000;
                break;
            default:
                this.sampleRate = 8000;
                break;
        }
        if (i6 == 2) {
            this.sampleRate *= 2;
        } else if (i6 == 3) {
            this.sampleRate *= 4;
        }
        if ((i4 & 402) < 3) {
            this.channels = 2;
        } else {
            this.channels = 1;
        }
    }

    public AudioFrame(InputStream inputStream, ContentHandler contentHandler) {
        this(-2, -2, -2, -2, inputStream);
    }

    public static boolean isAudioHeader(int i, int i2, int i3, int i4) {
        return (i == -1 || i2 == -1 || i3 == -1 || i4 == -1 || i != 255 || (i2 & 96) != 96) ? false : true;
    }

    public int getChannels() {
        return this.channels;
    }

    public int getSampleRate() {
        return this.sampleRate;
    }

    public String getVersion() {
        return this.version;
    }
}
