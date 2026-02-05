package jcifs.netbios;

import java.io.IOException;

/* loaded from: classes.dex */
public class NbtException extends IOException {
    public static final int ACT_ERR = 6;
    public static final int CALLED_NOT_PRESENT = 130;
    public static final int CFT_ERR = 7;
    public static final int CONNECTION_REFUSED = -1;
    public static final int ERR_NAM_SRVC = 1;
    public static final int ERR_SSN_SRVC = 2;
    public static final int FMT_ERR = 1;
    public static final int IMP_ERR = 4;
    public static final int NOT_LISTENING_CALLED = 128;
    public static final int NOT_LISTENING_CALLING = 129;
    public static final int NO_RESOURCES = 131;
    public static final int RFS_ERR = 5;
    public static final int SRV_ERR = 2;
    public static final int SUCCESS = 0;
    public static final int UNSPECIFIED = 143;
    public int errorClass;
    public int errorCode;

    public NbtException(int i, int i2) {
        super(getErrorString(i, i2));
        this.errorClass = i;
        this.errorCode = i2;
    }

    public static String getErrorString(int i, int i2) {
        switch (i) {
            case 0:
                return "SUCCESS";
            case 1:
                String str = "ERR_NAM_SRVC/";
                switch (i2) {
                    case 1:
                        str = str + "FMT_ERR: Format Error";
                        break;
                }
                return str + "Unknown error code: " + i2;
            case 2:
                String str2 = "ERR_SSN_SRVC/";
                switch (i2) {
                    case -1:
                        return str2 + "Connection refused";
                    case 128:
                        return str2 + "Not listening on called name";
                    case NOT_LISTENING_CALLING /* 129 */:
                        return str2 + "Not listening for calling name";
                    case 130:
                        return str2 + "Called name not present";
                    case 131:
                        return str2 + "Called name present, but insufficient resources";
                    case UNSPECIFIED /* 143 */:
                        return str2 + "Unspecified error";
                    default:
                        return str2 + "Unknown error code: " + i2;
                }
            default:
                return "unknown error class: " + i;
        }
    }

    @Override // java.lang.Throwable
    public String toString() {
        return new String("errorClass=" + this.errorClass + ",errorCode=" + this.errorCode + ",errorString=" + getErrorString(this.errorClass, this.errorCode));
    }
}
