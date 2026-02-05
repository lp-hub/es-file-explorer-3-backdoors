package com.estrongs.android.pop.app;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.estrongs.android.pop.netfs.NetFileInfo;
import java.io.File;
import java.io.FileNotFoundException;
import org.apache.tika.parser.mp3.Mp3Parser;

/* loaded from: classes.dex */
public class FileContentProvider extends ContentProvider {
    public static Uri a(String str) {
        String str2;
        try {
            str2 = "content://com.estrongs.files" + Uri.fromFile(new File(str)).toString().substring("file://".length());
        } catch (Exception e) {
            str2 = str.startsWith("/") ? "content://com.estrongs.files" + str : "content://com.estrongs.files/" + str;
        }
        return Uri.parse(str2);
    }

    private String a(Uri uri) {
        if (uri.toString().startsWith("content://com.estrongs.files")) {
            return uri.getPath();
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return com.estrongs.android.util.av.N(a(uri));
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) {
        try {
            String a2 = a(uri);
            if (a2 != null) {
                File file = new File(a2);
                if (file.exists()) {
                    return ParcelFileDescriptor.open(file, 268435456);
                }
            }
            throw new FileNotFoundException("No file found: " + a2);
        } catch (Exception e) {
            throw new FileNotFoundException("Failed to find uri: " + uri.toString());
        }
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String a2 = a(uri);
        if (strArr == null || strArr.length == 0) {
            strArr = new String[]{"_data", NetFileInfo.MIME_TYPE, "_display_name", "_size", "date_modified", "album", Mp3Parser.ARTIST};
        }
        MatrixCursor matrixCursor = new MatrixCursor(strArr);
        if (a2 == null) {
            return matrixCursor;
        }
        File file = new File(a2);
        if (!file.exists() || file.isDirectory()) {
            return matrixCursor;
        }
        MatrixCursor.RowBuilder newRow = matrixCursor.newRow();
        int lastIndexOf = a2.lastIndexOf(File.separatorChar) + 1;
        if (lastIndexOf >= a2.length()) {
            throw new RuntimeException("No file name specified: ".concat(a2));
        }
        String substring = lastIndexOf > 0 ? a2.substring(lastIndexOf) : a2;
        String N = com.estrongs.android.util.av.N(a2);
        long length = file.length();
        long lastModified = file.lastModified();
        for (String str3 : strArr) {
            if (str3.equals("_data")) {
                newRow.add(a2);
            } else if (str3.equals(NetFileInfo.MIME_TYPE)) {
                newRow.add(N);
            } else if (str3.equals("_display_name")) {
                newRow.add(substring);
            } else if (str3.equals("_size")) {
                if (length >= 0) {
                    newRow.add(Long.valueOf(length));
                } else {
                    newRow.add(null);
                }
            } else if (!str3.equals("date_modified")) {
                newRow.add(null);
            } else if (lastModified >= 0) {
                newRow.add(Long.valueOf(lastModified));
            } else {
                newRow.add(Long.valueOf(lastModified));
            }
        }
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
