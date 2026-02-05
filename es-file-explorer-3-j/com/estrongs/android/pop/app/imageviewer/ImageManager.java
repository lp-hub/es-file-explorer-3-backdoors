package com.estrongs.android.pop.app.imageviewer;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.graphics.Bitmap;
import android.location.Location;
import android.net.Uri;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.MediaStore;
import android.util.Log;
import com.estrongs.android.pop.netfs.NetFileInfo;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class ImageManager {
    private static final Uri c = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    private static final Uri d = MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI;
    private static final Uri e = Uri.parse("content://media/external/video/media");

    /* renamed from: a, reason: collision with root package name */
    public static final String f920a = com.estrongs.android.pop.b.b() + "/DCIM/Camera";

    /* renamed from: b, reason: collision with root package name */
    public static final String f921b = a(f920a);

    /* loaded from: classes.dex */
    public enum DataLocation {
        NONE,
        INTERNAL,
        EXTERNAL,
        ALL
    }

    /* loaded from: classes.dex */
    public class ImageListParam implements Parcelable {
        public static final Parcelable.Creator CREATOR = new y();

        /* renamed from: a, reason: collision with root package name */
        public DataLocation f922a;

        /* renamed from: b, reason: collision with root package name */
        public int f923b;
        public int c;
        public String d;
        public Uri e;
        public boolean f;

        public ImageListParam() {
        }

        private ImageListParam(Parcel parcel) {
            this.f922a = DataLocation.values()[parcel.readInt()];
            this.f923b = parcel.readInt();
            this.c = parcel.readInt();
            this.d = parcel.readString();
            this.e = (Uri) parcel.readParcelable(null);
            this.f = parcel.readInt() != 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return String.format("ImageListParam{loc=%s,inc=%d,sort=%d,bucket=%s,empty=%b,single=%s}", this.f922a, Integer.valueOf(this.f923b), Integer.valueOf(this.c), this.d, Boolean.valueOf(this.f), this.e);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f922a.ordinal());
            parcel.writeInt(this.f923b);
            parcel.writeInt(this.c);
            parcel.writeString(this.d);
            parcel.writeParcelable(this.e, i);
            parcel.writeInt(this.f ? 1 : 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [android.content.ContentValues] */
    /* JADX WARN: Type inference failed for: r13v0, types: [android.graphics.Bitmap] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v17, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.io.OutputStream, java.io.Closeable, java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.content.ContentResolver] */
    public static Uri a(ContentResolver contentResolver, String str, long j, Location location, String str2, String str3, Bitmap bitmap, byte[] bArr, int[] iArr) {
        Throwable th;
        ?? r2;
        ?? r0 = 0;
        r0 = 0;
        r0 = 0;
        r0 = 0;
        ?? r22 = "/";
        String str4 = str2 + "/" + str3;
        try {
            try {
                File file = new File(str2);
                if (!file.exists()) {
                    file.mkdirs();
                }
                r2 = new FileOutputStream(new File(str2, str3));
                try {
                    if (bitmap != 0) {
                        bitmap.compress(Bitmap.CompressFormat.JPEG, 75, r2);
                        iArr[0] = 0;
                    } else {
                        r2.write(bArr);
                        iArr[0] = c(str4);
                    }
                    am.a((Closeable) r2);
                    r0 = new ContentValues(7);
                    r0.put("title", str);
                    r0.put("_display_name", str3);
                    r0.put("datetaken", Long.valueOf(j));
                    r0.put(NetFileInfo.MIME_TYPE, "image/jpeg");
                    r0.put("orientation", Integer.valueOf(iArr[0]));
                    r2 = "_data";
                    r0.put("_data", str4);
                    if (location != null) {
                        r0.put("latitude", Double.valueOf(location.getLatitude()));
                        r0.put("longitude", Double.valueOf(location.getLongitude()));
                    }
                    return contentResolver.insert(c, r0);
                } catch (FileNotFoundException e2) {
                    e = e2;
                    Log.w("ImageUtils", e);
                    am.a((Closeable) r2);
                    return r0;
                } catch (IOException e3) {
                    e = e3;
                    Log.w("ImageUtils", e);
                    am.a((Closeable) r2);
                    return r0;
                }
            } catch (Throwable th2) {
                th = th2;
                am.a((Closeable) r22);
                throw th;
            }
        } catch (FileNotFoundException e4) {
            e = e4;
            r2 = 0;
        } catch (IOException e5) {
            e = e5;
            r2 = 0;
        } catch (Throwable th3) {
            r22 = 0;
            th = th3;
            am.a((Closeable) r22);
            throw th;
        }
    }

    public static com.estrongs.android.pop.app.imageviewer.gallery.f a(ContentResolver contentResolver, Uri uri, int i) {
        String uri2 = uri != null ? uri.toString() : "";
        return uri2.startsWith("content://") ? new com.estrongs.android.pop.app.imageviewer.gallery.a(contentResolver, uri, i) : d(uri2) ? new com.estrongs.android.pop.app.imageviewer.gallery.i(contentResolver, uri) : new x();
    }

    public static com.estrongs.android.pop.app.imageviewer.gallery.f a(com.estrongs.fs.d dVar, String str, String str2, com.estrongs.fs.h hVar, com.estrongs.fs.c.a.a aVar) {
        return new com.estrongs.android.pop.app.imageviewer.gallery.d(dVar, str, str2, hVar, aVar);
    }

    public static String a(String str) {
        return String.valueOf(str.toLowerCase().hashCode());
    }

    public static boolean a() {
        return a(true);
    }

    public static boolean a(com.estrongs.android.pop.app.imageviewer.gallery.e eVar) {
        return b(eVar.j());
    }

    public static boolean a(boolean z) {
        String externalStorageState = Environment.getExternalStorageState();
        if (!"mounted".equals(externalStorageState)) {
            return !z && "mounted_ro".equals(externalStorageState);
        }
        if (z) {
            return b();
        }
        return true;
    }

    private static boolean b() {
        String str = com.estrongs.android.pop.b.b() + "/DCIM";
        File file = new File(str);
        if (!file.isDirectory() && !file.mkdirs()) {
            return false;
        }
        File file2 = new File(str, ".probe");
        try {
            if (file2.exists()) {
                file2.delete();
            }
            if (!file2.createNewFile()) {
                return false;
            }
            file2.delete();
            return true;
        } catch (IOException e2) {
            return false;
        }
    }

    public static boolean b(String str) {
        return str.startsWith("image/");
    }

    public static int c(String str) {
        return 0;
    }

    static boolean d(String str) {
        return (str.startsWith(MediaStore.Images.Media.EXTERNAL_CONTENT_URI.toString()) || str.startsWith(MediaStore.Images.Media.INTERNAL_CONTENT_URI.toString())) ? false : true;
    }
}
