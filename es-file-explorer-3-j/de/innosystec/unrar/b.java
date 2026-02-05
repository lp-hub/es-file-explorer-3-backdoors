package de.innosystec.unrar;

import de.innosystec.unrar.rarfile.SubBlockHeaderType;
import de.innosystec.unrar.rarfile.UnrarHeadertype;

/* loaded from: classes.dex */
/* synthetic */ class b {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f3399a;

    /* renamed from: b, reason: collision with root package name */
    static final /* synthetic */ int[] f3400b = new int[UnrarHeadertype.values().length];

    static {
        try {
            f3400b[UnrarHeadertype.NewSubHeader.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f3400b[UnrarHeadertype.FileHeader.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f3400b[UnrarHeadertype.ProtectHeader.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            f3400b[UnrarHeadertype.SubHeader.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f3400b[UnrarHeadertype.MarkHeader.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            f3400b[UnrarHeadertype.MainHeader.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
        try {
            f3400b[UnrarHeadertype.SignHeader.ordinal()] = 7;
        } catch (NoSuchFieldError e7) {
        }
        try {
            f3400b[UnrarHeadertype.AvHeader.ordinal()] = 8;
        } catch (NoSuchFieldError e8) {
        }
        try {
            f3400b[UnrarHeadertype.CommHeader.ordinal()] = 9;
        } catch (NoSuchFieldError e9) {
        }
        try {
            f3400b[UnrarHeadertype.EndArcHeader.ordinal()] = 10;
        } catch (NoSuchFieldError e10) {
        }
        f3399a = new int[SubBlockHeaderType.values().length];
        try {
            f3399a[SubBlockHeaderType.MAC_HEAD.ordinal()] = 1;
        } catch (NoSuchFieldError e11) {
        }
        try {
            f3399a[SubBlockHeaderType.BEEA_HEAD.ordinal()] = 2;
        } catch (NoSuchFieldError e12) {
        }
        try {
            f3399a[SubBlockHeaderType.EA_HEAD.ordinal()] = 3;
        } catch (NoSuchFieldError e13) {
        }
        try {
            f3399a[SubBlockHeaderType.NTACL_HEAD.ordinal()] = 4;
        } catch (NoSuchFieldError e14) {
        }
        try {
            f3399a[SubBlockHeaderType.STREAM_HEAD.ordinal()] = 5;
        } catch (NoSuchFieldError e15) {
        }
        try {
            f3399a[SubBlockHeaderType.UO_HEAD.ordinal()] = 6;
        } catch (NoSuchFieldError e16) {
        }
    }
}
