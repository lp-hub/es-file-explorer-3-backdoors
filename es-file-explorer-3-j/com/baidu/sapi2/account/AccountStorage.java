package com.baidu.sapi2.account;

import android.content.Context;
import com.baidu.sapi2.log.Logger;
import com.baidu.sapi2.share.NativeCrypto;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/* loaded from: classes.dex */
public class AccountStorage {
    private static final String STORAGE_ACCOUNT_FILENAME = "Baidu_Storage_ACS";
    private static volatile AccountStorage accountStorage = null;
    private Context mContext;

    private AccountStorage(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    private String decrypt(Context context, String str) {
        try {
            return NativeCrypto.decrypt(context, str);
        } catch (Throwable th) {
            return null;
        }
    }

    private String encrypt(Context context, String str) {
        try {
            return NativeCrypto.encrypt(context, str);
        } catch (Throwable th) {
            return null;
        }
    }

    public static AccountStorage getInstance(Context context) {
        if (accountStorage == null) {
            synchronized (AccountStorage.class) {
                if (accountStorage == null) {
                    accountStorage = new AccountStorage(context);
                }
            }
        }
        return accountStorage;
    }

    public boolean blockClear() {
        if (this.mContext == null) {
            return false;
        }
        this.mContext.deleteFile(STORAGE_ACCOUNT_FILENAME);
        return true;
    }

    public String blockReceive() {
        FileInputStream fileInputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            fileInputStream = this.mContext.openFileInput(STORAGE_ACCOUNT_FILENAME);
            try {
                if (fileInputStream == null) {
                    byteArrayOutputStream.flush();
                    byteArrayOutputStream.close();
                    return null;
                }
                byte[] bArr = new byte[2048];
                for (int i = 0; i != -1; i = fileInputStream.read(bArr)) {
                    byteArrayOutputStream.write(bArr, 0, i);
                }
                fileInputStream.close();
                return decrypt(this.mContext, new String(byteArrayOutputStream.toByteArray()));
            } catch (Exception e) {
                e = e;
                Logger.w(e);
                try {
                    byteArrayOutputStream.flush();
                    byteArrayOutputStream.close();
                    fileInputStream.close();
                    return null;
                } catch (Exception e2) {
                    Logger.w(e2);
                    return null;
                }
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
        }
    }

    public boolean blockUpdate(String str) {
        String encrypt = encrypt(this.mContext, str);
        FileOutputStream fileOutputStream = null;
        try {
            fileOutputStream = this.mContext.openFileOutput(STORAGE_ACCOUNT_FILENAME, 0);
            fileOutputStream.write(encrypt.getBytes());
            fileOutputStream.flush();
            fileOutputStream.close();
            return true;
        } catch (Exception e) {
            Logger.w(e);
            try {
                fileOutputStream.flush();
                fileOutputStream.close();
                return false;
            } catch (Exception e2) {
                Logger.w(e2);
                return false;
            }
        }
    }
}
