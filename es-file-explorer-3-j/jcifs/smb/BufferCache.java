package jcifs.smb;

import jcifs.Config;

/* loaded from: classes.dex */
public class BufferCache {
    private static final int MAX_BUFFERS = Config.getInt("jcifs.smb.maxBuffers", 16);
    static Object[] cache = new Object[MAX_BUFFERS];
    private static int freeBuffers = 0;

    public static byte[] getBuffer() {
        byte[] bArr;
        synchronized (cache) {
            if (freeBuffers > 0) {
                for (int i = 0; i < MAX_BUFFERS; i++) {
                    if (cache[i] != null) {
                        bArr = (byte[]) cache[i];
                        cache[i] = null;
                        freeBuffers--;
                        break;
                    }
                }
            }
            bArr = new byte[65535];
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void getBuffers(SmbComTransaction smbComTransaction, SmbComTransactionResponse smbComTransactionResponse) {
        synchronized (cache) {
            smbComTransaction.txn_buf = getBuffer();
            smbComTransactionResponse.txn_buf = getBuffer();
        }
    }

    public static void releaseBuffer(byte[] bArr) {
        synchronized (cache) {
            if (freeBuffers < MAX_BUFFERS) {
                for (int i = 0; i < MAX_BUFFERS; i++) {
                    if (cache[i] == null) {
                        cache[i] = bArr;
                        freeBuffers++;
                        return;
                    }
                }
            }
        }
    }
}
