package com.baidu.sapi2.loginshare;

import android.content.Context;
import com.baidu.sapi2.log.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class FileStorage implements IDataStorage {
    private Context mContext;
    private JSONObject mJson = null;
    private File mFile = null;
    private boolean mIsChange = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FileStorage(Context context) {
        this.mContext = null;
        this.mContext = context;
        init();
    }

    /* JADX WARN: Removed duplicated region for block: B:81:0x00e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void init() {
        File file;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        FileInputStream fileInputStream3 = null;
        File filesDir = this.mContext.getFilesDir();
        if (filesDir != null) {
            File file2 = new File(filesDir.getAbsolutePath() + "/" + Keystore.getFileName());
            this.mFile = new File(filesDir.getAbsolutePath() + "/" + Keystore.getEngyptFileName());
            file = file2;
        } else {
            file = null;
        }
        if (file != null && file.exists() && this.mFile != null && this.mFile.exists()) {
            file.delete();
        } else if (file != null && file.exists()) {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    try {
                        byte[] bArr = new byte[(int) file.length()];
                        fileInputStream.read(bArr);
                        this.mJson = new JSONObject(new String(bArr));
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Exception e) {
                            }
                        }
                    } catch (Exception e2) {
                        this.mJson = new JSONObject();
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Exception e3) {
                            }
                        }
                        commit();
                        file.delete();
                        if (this.mFile != null) {
                        }
                        this.mJson = new JSONObject();
                        return;
                    }
                } catch (Throwable th) {
                    fileInputStream3 = fileInputStream;
                    th = th;
                    if (fileInputStream3 != null) {
                        try {
                            fileInputStream3.close();
                        } catch (Exception e4) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e5) {
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                if (fileInputStream3 != null) {
                }
                throw th;
            }
            commit();
            file.delete();
        }
        if (this.mFile != null || !this.mFile.exists()) {
            this.mJson = new JSONObject();
            return;
        }
        try {
            try {
                fileInputStream2 = new FileInputStream(this.mFile);
            } catch (Exception e6) {
            }
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            byte[] bArr2 = new byte[(int) this.mFile.length()];
            fileInputStream2.read(bArr2);
            this.mJson = new JSONObject(LoginShareCrypto.decrypt(this.mContext, new String(bArr2)));
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (Exception e7) {
                }
            }
        } catch (Exception e8) {
            fileInputStream3 = fileInputStream2;
            this.mJson = new JSONObject();
            if (fileInputStream3 != null) {
                try {
                    fileInputStream3.close();
                } catch (Exception e9) {
                }
            }
        } catch (Throwable th4) {
            fileInputStream3 = fileInputStream2;
            th = th4;
            if (fileInputStream3 != null) {
                try {
                    fileInputStream3.close();
                } catch (Exception e10) {
                }
            }
            throw th;
        }
    }

    @Override // com.baidu.sapi2.loginshare.IDataStorage
    public void close() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x003c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.FileWriter] */
    @Override // com.baidu.sapi2.loginshare.IDataStorage
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean commit() {
        boolean z = true;
        FileWriter fileWriter = this.mIsChange;
        if (fileWriter != 0) {
            try {
                try {
                    fileWriter = new FileWriter(this.mFile);
                    try {
                        fileWriter.write(LoginShareCrypto.encrypt(this.mContext, this.mJson.toString()));
                        fileWriter.flush();
                        this.mIsChange = false;
                        if (fileWriter != 0) {
                            try {
                                fileWriter.close();
                            } catch (Exception e) {
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                        Logger.w(e);
                        if (fileWriter != 0) {
                            try {
                                fileWriter.close();
                            } catch (Exception e3) {
                            }
                        }
                        z = false;
                        return z;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (fileWriter != 0) {
                        try {
                            fileWriter.close();
                        } catch (Exception e4) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e5) {
                e = e5;
                fileWriter = 0;
            } catch (Throwable th2) {
                th = th2;
                fileWriter = 0;
                if (fileWriter != 0) {
                }
                throw th;
            }
        }
        return z;
    }

    @Override // com.baidu.sapi2.loginshare.IDataStorage
    public JSONArray getJSONArray(String str) {
        return this.mJson.optJSONArray(str);
    }

    @Override // com.baidu.sapi2.loginshare.IDataStorage
    public String getString(String str) {
        return this.mJson.optString(str);
    }

    @Override // com.baidu.sapi2.loginshare.IDataStorage
    public void put(String str, String str2) {
        try {
            this.mJson.put(str, str2);
        } catch (JSONException e) {
            Logger.w(e);
        }
        if (this.mIsChange) {
            return;
        }
        String string = getString(str);
        if (string != null) {
            this.mIsChange = string.equals(str2) ? false : true;
        } else {
            this.mIsChange = str2 == null;
        }
    }

    @Override // com.baidu.sapi2.loginshare.IDataStorage
    public void put(String str, JSONArray jSONArray) {
        try {
            this.mJson.put(str, jSONArray);
        } catch (JSONException e) {
            Logger.w(e);
        }
        if (this.mIsChange) {
            return;
        }
        this.mIsChange = true;
    }
}
