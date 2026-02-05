package com.dropbox.client2.exception;

import java.io.BufferedReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class DropboxParseException extends DropboxException {
    private static final long serialVersionUID = 1;

    public DropboxParseException(BufferedReader bufferedReader) {
        super("failed to parse: " + stringifyBody(bufferedReader));
    }

    public DropboxParseException(String str) {
        super(str);
    }

    public static String stringifyBody(BufferedReader bufferedReader) {
        if (bufferedReader != null) {
            try {
                bufferedReader.reset();
            } catch (IOException e) {
            }
        }
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                stringBuffer.append(readLine);
            } catch (IOException e2) {
            }
        }
        return stringBuffer.toString();
    }
}
