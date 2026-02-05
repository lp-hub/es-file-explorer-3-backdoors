package de.innosystec.unrar.rarfile;

import java.util.Arrays;

/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    public static final m f3406a = new m(new byte[]{67, 77, 84});

    /* renamed from: b, reason: collision with root package name */
    public static final m f3407b = new m(new byte[]{65, 67, 76});
    public static final m c = new m(new byte[]{83, 84, 77});
    public static final m d = new m(new byte[]{85, 79, 87});
    public static final m e = new m(new byte[]{65, 86});
    public static final m f = new m(new byte[]{82, 82});
    public static final m g = new m(new byte[]{69, 65, 50});
    public static final m h = new m(new byte[]{69, 65, 66, 69});
    private byte[] i;

    private m(byte[] bArr) {
        this.i = bArr;
    }

    public boolean a(byte[] bArr) {
        return Arrays.equals(this.i, bArr);
    }

    public String toString() {
        return new String(this.i);
    }
}
