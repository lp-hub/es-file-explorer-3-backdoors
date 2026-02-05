package com.gmail.yuyang226.flickr.d;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;

/* loaded from: classes.dex */
public class b {
    public static void a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
    }

    public static void a(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e) {
            }
        }
    }

    public static void a(Reader reader) {
        if (reader != null) {
            try {
                reader.close();
            } catch (IOException e) {
            }
        }
    }
}
