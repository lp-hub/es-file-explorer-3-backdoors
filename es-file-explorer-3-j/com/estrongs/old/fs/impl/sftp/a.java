package com.estrongs.old.fs.impl.sftp;

import com.jcraft.jsch.UIKeyboardInteractive;
import com.jcraft.jsch.UserInfo;

/* loaded from: classes.dex */
public class a implements UIKeyboardInteractive, UserInfo {

    /* renamed from: a, reason: collision with root package name */
    String f3242a;

    public a(String str) {
        this.f3242a = null;
        this.f3242a = str;
    }

    @Override // com.jcraft.jsch.UserInfo
    public String a() {
        return this.f3242a;
    }

    @Override // com.jcraft.jsch.UserInfo
    public boolean a(String str) {
        return true;
    }

    @Override // com.jcraft.jsch.UIKeyboardInteractive
    public String[] a(String str, String str2, String str3, String[] strArr, boolean[] zArr) {
        if (strArr == null) {
            return null;
        }
        int length = strArr.length;
        String[] strArr2 = new String[length];
        for (int i = 0; i < length; i++) {
            strArr2[i] = this.f3242a;
        }
        return strArr2;
    }

    @Override // com.jcraft.jsch.UserInfo
    public String b() {
        return null;
    }

    @Override // com.jcraft.jsch.UserInfo
    public boolean b(String str) {
        return true;
    }

    @Override // com.jcraft.jsch.UserInfo
    public boolean c(String str) {
        return true;
    }

    @Override // com.jcraft.jsch.UserInfo
    public void d(String str) {
    }
}
