.class public Lcom/baidu/sapi2/CppUtils;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "sapi_so_1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeGetDeviceAESMode()Ljava/lang/String;
.end method

.method public static native nativeGetDeviceKey()Ljava/lang/String;
.end method

.method public static native unimplementedNativeGetDeviceAESMode()Ljava/lang/String;
.end method

.method public static native unimplementedNativeGetDeviceKey()Ljava/lang/String;
.end method


# virtual methods
.method public native nativeAskDynamicPwd()Ljava/lang/String;
.end method

.method public native nativeConfigApplyregcode()Ljava/lang/String;
.end method

.method public native nativeConfigLogin()Ljava/lang/String;
.end method

.method public native nativeConfigLogout()Ljava/lang/String;
.end method

.method public native nativeConfigPassDoman1()Ljava/lang/String;
.end method

.method public native nativeConfigPassDoman2()Ljava/lang/String;
.end method

.method public native nativeConfigPassDoman3()Ljava/lang/String;
.end method

.method public native nativeConfigPhoneregverify()Ljava/lang/String;
.end method

.method public native nativeConfigRegdatacheck()Ljava/lang/String;
.end method

.method public native nativeGetDeviceCheck()Ljava/lang/String;
.end method

.method public native nativeGetDeviceForceReg()Ljava/lang/String;
.end method

.method public native nativeGetDeviceLogin()Ljava/lang/String;
.end method

.method public native nativeGetDeviceReg()Ljava/lang/String;
.end method

.method public native nativeGetDownloadLogin()Ljava/lang/String;
.end method

.method public native nativeGetFastReg()Ljava/lang/String;
.end method

.method public native nativeGetFillFinish()Ljava/lang/String;
.end method

.method public native nativeGetFillStart()Ljava/lang/String;
.end method

.method public native nativeGetPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native nativeGetQrAppLogin()Ljava/lang/String;
.end method

.method public native nativeGetQrPCLogin()Ljava/lang/String;
.end method

.method public native nativeGetSSOFinish()Ljava/lang/String;
.end method

.method public native nativeGetSSOStart()Ljava/lang/String;
.end method

.method public native nativeGetSocialAfterAuth()Ljava/lang/String;
.end method

.method public native nativeGetSocialFinishAuth()Ljava/lang/String;
.end method

.method public native nativeGetSocialStart()Ljava/lang/String;
.end method

.method public native unimplementedNativeAskDynamicPwd()Ljava/lang/String;
.end method

.method public native unimplementedNativeConfigLogin()Ljava/lang/String;
.end method

.method public native unimplementedNativeConfigLogout()Ljava/lang/String;
.end method

.method public native unimplementedNativeConfigPassDoman1()Ljava/lang/String;
.end method

.method public native unimplementedNativeConfigPassDoman2()Ljava/lang/String;
.end method

.method public native unimplementedNativeConfigPassDoman3()Ljava/lang/String;
.end method

.method public native unimplementedNativeConfigPhoneregverify()Ljava/lang/String;
.end method

.method public native unimplementedNativeConfigRegdatacheck()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetDeviceCheck()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetDeviceForceLogin()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetDeviceLogin()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetDeviceReg()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetDownloadLogin()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetFastReg()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetFillFinish()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetFillStart()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetPassword()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetQrAppLogin()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetQrPCLogin()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetSSOFinish()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetSSOStart()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetSocialAfterAuth()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetSocialFinishAuth()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetSocialStart()Ljava/lang/String;
.end method

.method public native unimplementedNativeGetSyncAction()Ljava/lang/String;
.end method
