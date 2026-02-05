package com.estrongs.android.pop.netfs;

/* loaded from: classes.dex */
public class NetFsException extends Exception {
    public ERROR_CODE error;

    /* loaded from: classes.dex */
    public enum ERROR_CODE {
        NETFS_ERROR_NOT_INSTALLED,
        NETFS_ERROR_NOT_LOADED,
        NETFS_ERROR_MALFORMED_URL,
        NETFS_ERROR_NOT_LOG_IN,
        NETFS_ERROR_AUTH_FAILED,
        NETFS_ERROR_TOKEN_EXPIRE,
        NETFS_ERROR_OPERATION_NOT_SUPPORT;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static ERROR_CODE[] valuesCustom() {
            ERROR_CODE[] valuesCustom = values();
            int length = valuesCustom.length;
            ERROR_CODE[] error_codeArr = new ERROR_CODE[length];
            System.arraycopy(valuesCustom, 0, error_codeArr, 0, length);
            return error_codeArr;
        }
    }

    public NetFsException() {
    }

    public NetFsException(String str, ERROR_CODE error_code) {
        super(str);
        this.error = error_code;
    }

    public NetFsException(Throwable th) {
        super(th);
    }
}
