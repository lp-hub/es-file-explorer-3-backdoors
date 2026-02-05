package com.baidu.sapi2;

import com.baidu.sapi2.log.Logger;

/* loaded from: classes.dex */
public class CppUtils {
    static {
        try {
            System.loadLibrary(Constants.SAPI_SO);
        } catch (Throwable th) {
            Logger.e(th.getMessage());
        }
    }

    public static native String nativeGetDeviceAESMode();

    public static native String nativeGetDeviceKey();

    public static native String unimplementedNativeGetDeviceAESMode();

    public static native String unimplementedNativeGetDeviceKey();

    public native String nativeAskDynamicPwd();

    public native String nativeConfigApplyregcode();

    public native String nativeConfigLogin();

    public native String nativeConfigLogout();

    public native String nativeConfigPassDoman1();

    public native String nativeConfigPassDoman2();

    public native String nativeConfigPassDoman3();

    public native String nativeConfigPhoneregverify();

    public native String nativeConfigRegdatacheck();

    public native String nativeGetDeviceCheck();

    public native String nativeGetDeviceForceReg();

    public native String nativeGetDeviceLogin();

    public native String nativeGetDeviceReg();

    public native String nativeGetDownloadLogin();

    public native String nativeGetFastReg();

    public native String nativeGetFillFinish();

    public native String nativeGetFillStart();

    public native String nativeGetPassword(String str, String str2);

    public native String nativeGetQrAppLogin();

    public native String nativeGetQrPCLogin();

    public native String nativeGetSSOFinish();

    public native String nativeGetSSOStart();

    public native String nativeGetSocialAfterAuth();

    public native String nativeGetSocialFinishAuth();

    public native String nativeGetSocialStart();

    public native String unimplementedNativeAskDynamicPwd();

    public native String unimplementedNativeConfigLogin();

    public native String unimplementedNativeConfigLogout();

    public native String unimplementedNativeConfigPassDoman1();

    public native String unimplementedNativeConfigPassDoman2();

    public native String unimplementedNativeConfigPassDoman3();

    public native String unimplementedNativeConfigPhoneregverify();

    public native String unimplementedNativeConfigRegdatacheck();

    public native String unimplementedNativeGetDeviceCheck();

    public native String unimplementedNativeGetDeviceForceLogin();

    public native String unimplementedNativeGetDeviceLogin();

    public native String unimplementedNativeGetDeviceReg();

    public native String unimplementedNativeGetDownloadLogin();

    public native String unimplementedNativeGetFastReg();

    public native String unimplementedNativeGetFillFinish();

    public native String unimplementedNativeGetFillStart();

    public native String unimplementedNativeGetPassword();

    public native String unimplementedNativeGetQrAppLogin();

    public native String unimplementedNativeGetQrPCLogin();

    public native String unimplementedNativeGetSSOFinish();

    public native String unimplementedNativeGetSSOStart();

    public native String unimplementedNativeGetSocialAfterAuth();

    public native String unimplementedNativeGetSocialFinishAuth();

    public native String unimplementedNativeGetSocialStart();

    public native String unimplementedNativeGetSyncAction();
}
