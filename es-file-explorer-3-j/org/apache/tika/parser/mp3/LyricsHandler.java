package org.apache.tika.parser.mp3;

import java.io.InputStream;

/* loaded from: classes.dex */
public class LyricsHandler {
    boolean foundLyrics;
    ID3v1Handler id3v1;
    String lyricsText;

    public LyricsHandler(InputStream inputStream) {
        this(getSuffix(inputStream, 10368));
    }

    protected LyricsHandler(byte[] bArr) {
        this.foundLyrics = false;
        this.lyricsText = null;
        this.id3v1 = null;
        if (bArr.length < 128) {
            return;
        }
        byte[] bArr2 = new byte[128];
        System.arraycopy(bArr, bArr.length - 128, bArr2, 0, 128);
        this.id3v1 = new ID3v1Handler(bArr2);
        if (bArr.length >= 137) {
            int length = bArr.length - 9;
            length = this.id3v1.found ? length - 128 : length;
            if (bArr[length + 0] == 76 && bArr[length + 1] == 89 && bArr[length + 2] == 82 && bArr[length + 3] == 73 && bArr[length + 4] == 67 && bArr[length + 5] == 83 && bArr[length + 6] == 50 && bArr[length + 7] == 48 && bArr[length + 8] == 48) {
                this.foundLyrics = true;
                int parseInt = Integer.parseInt(new String(bArr, length - 6, 6));
                String str = new String(bArr, (length - parseInt) + 5, parseInt - 11, "ASCII");
                int i = 0;
                while (i < str.length() - 8) {
                    String substring = str.substring(i, i + 3);
                    int i2 = i + 8;
                    i = i2 + Integer.parseInt(str.substring(i + 3, i + 8));
                    if (substring.equals("LYR")) {
                        this.lyricsText = str.substring(i2, i);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] getSuffix(InputStream inputStream, int i) {
        byte[] bArr = new byte[i * 2];
        int read = inputStream.read(bArr);
        int i2 = 0;
        while (read != -1) {
            i2 += read;
            if (i2 == bArr.length) {
                System.arraycopy(bArr, i2 - i, bArr, 0, i);
                i2 = i;
            }
            read = inputStream.read(bArr, i2, bArr.length - i2);
        }
        if (i2 < i) {
            i = i2;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, i2 - i, bArr2, 0, i);
        return bArr2;
    }

    public boolean hasID3v1() {
        return this.id3v1 != null && this.id3v1.found;
    }

    public boolean hasLyrics() {
        return this.lyricsText != null && this.lyricsText.length() > 0;
    }
}
