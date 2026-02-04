.class public Lcom/baidu/sapi2/share/NativeCrypto;
.super Ljava/lang/Object;


# static fields
.field private static final ALGORITHM:Ljava/lang/String;

.field private static final CIPHER:Ljava/lang/String;

.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final IV:Ljava/lang/String;

.field private static volatile bInit:Z

.field private static key:Ljava/lang/String;

.field private static loadSuccess:Z

.field private static mCipher:Ljavax/crypto/Cipher;

.field private static mIv:Ljavax/crypto/spec/IvParameterSpec;

.field private static mSkeySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-boolean v2, Lcom/baidu/sapi2/share/NativeCrypto;->loadSuccess:Z

    invoke-static {}, Lcom/baidu/sapi2/share/NativeCrypto;->getIV()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/sapi2/share/NativeCrypto;->IV:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/share/NativeCrypto;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/sapi2/share/NativeCrypto;->ALGORITHM:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/share/NativeCrypto;->getCipher()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/sapi2/share/NativeCrypto;->CIPHER:Ljava/lang/String;

    sput-object v1, Lcom/baidu/sapi2/share/NativeCrypto;->mSkeySpec:Ljavax/crypto/spec/SecretKeySpec;

    sput-object v1, Lcom/baidu/sapi2/share/NativeCrypto;->mCipher:Ljavax/crypto/Cipher;

    sput-object v1, Lcom/baidu/sapi2/share/NativeCrypto;->mIv:Ljavax/crypto/spec/IvParameterSpec;

    sput-boolean v2, Lcom/baidu/sapi2/share/NativeCrypto;->bInit:Z

    const-string v0, ""

    sput-object v0, Lcom/baidu/sapi2/share/NativeCrypto;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3

    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static checkIv()V
    .locals 2

    sget-object v0, Lcom/baidu/sapi2/share/NativeCrypto;->mIv:Ljavax/crypto/spec/IvParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/baidu/sapi2/share/NativeCrypto;->IV:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/baidu/sapi2/share/NativeCrypto;->mIv:Ljavax/crypto/spec/IvParameterSpec;

    :cond_0
    return-void
.end method

.method private static checkLoadLibrary()V
    .locals 1

    sget-boolean v0, Lcom/baidu/sapi2/share/NativeCrypto;->loadSuccess:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "sapi_so"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/sapi2/share/NativeCrypto;->loadSuccess:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/sapi2/share/NativeCrypto;->loadSuccess:Z

    goto :goto_0
.end method

.method public static decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/baidu/sapi2/share/Utils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p0, :cond_0

    sget-boolean v1, Lcom/baidu/sapi2/share/NativeCrypto;->bInit:Z

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/baidu/sapi2/share/NativeCrypto;->init(Landroid/content/Context;)V

    :cond_2
    :try_start_0
    sget-object v1, Lcom/baidu/sapi2/share/NativeCrypto;->mCipher:Ljavax/crypto/Cipher;

    if-nez v1, :cond_3

    sget-object v1, Lcom/baidu/sapi2/share/NativeCrypto;->CIPHER:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    sput-object v1, Lcom/baidu/sapi2/share/NativeCrypto;->mCipher:Ljavax/crypto/Cipher;

    :cond_3
    invoke-static {}, Lcom/baidu/sapi2/share/NativeCrypto;->checkIv()V

    sget-object v1, Lcom/baidu/sapi2/share/NativeCrypto;->mCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    sget-object v3, Lcom/baidu/sapi2/share/NativeCrypto;->mSkeySpec:Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/baidu/sapi2/share/NativeCrypto;->mIv:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {p1}, Lcom/baidu/sapi2/share/NativeCrypto;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcom/baidu/sapi2/share/NativeCrypto;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static destroy()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/sapi2/share/NativeCrypto;->bInit:Z

    return-void
.end method

.method public static encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/baidu/sapi2/share/Utils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p0, :cond_0

    sget-boolean v1, Lcom/baidu/sapi2/share/NativeCrypto;->bInit:Z

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/baidu/sapi2/share/NativeCrypto;->init(Landroid/content/Context;)V

    :cond_2
    :try_start_0
    sget-object v1, Lcom/baidu/sapi2/share/NativeCrypto;->mCipher:Ljavax/crypto/Cipher;

    if-nez v1, :cond_3

    sget-object v1, Lcom/baidu/sapi2/share/NativeCrypto;->CIPHER:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    sput-object v1, Lcom/baidu/sapi2/share/NativeCrypto;->mCipher:Ljavax/crypto/Cipher;

    :cond_3
    invoke-static {}, Lcom/baidu/sapi2/share/NativeCrypto;->checkIv()V

    sget-object v1, Lcom/baidu/sapi2/share/NativeCrypto;->mCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    sget-object v3, Lcom/baidu/sapi2/share/NativeCrypto;->mSkeySpec:Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/baidu/sapi2/share/NativeCrypto;->mIv:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    sget-object v1, Lcom/baidu/sapi2/share/NativeCrypto;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/share/NativeCrypto;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getAlgorithm()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/sapi2/share/NativeCrypto;->checkLoadLibrary()V

    invoke-static {}, Lcom/baidu/sapi2/share/NativeCrypto;->nativeGetAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCipher()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/sapi2/share/NativeCrypto;->checkLoadLibrary()V

    invoke-static {}, Lcom/baidu/sapi2/share/NativeCrypto;->nativeGetCipher()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIV()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/sapi2/share/NativeCrypto;->checkLoadLibrary()V

    invoke-static {}, Lcom/baidu/sapi2/share/NativeCrypto;->nativeGetIV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/baidu/sapi2/share/NativeCrypto;->checkLoadLibrary()V

    const/16 v2, 0x10

    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "%1$s-%2$s-%3$s-%4$s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    aput-object v0, v6, v8

    aput-object v3, v6, v9

    aput-object v4, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "----------------"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const-string v0, "%1$s-%2$s-%3$s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v1, v5, v7

    aput-object v3, v5, v8

    aput-object v4, v5, v9

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/baidu/sapi2/share/NativeCrypto;->checkLoadLibrary()V

    invoke-static {p0}, Lcom/baidu/sapi2/share/NativeCrypto;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/sapi2/share/NativeCrypto;->key:Ljava/lang/String;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/baidu/sapi2/share/NativeCrypto;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v2, Lcom/baidu/sapi2/share/NativeCrypto;->ALGORITHM:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/share/NativeCrypto;->mSkeySpec:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/sapi2/share/NativeCrypto;->bInit:Z

    return-void
.end method

.method private static native nativeGetAlgorithm()Ljava/lang/String;
.end method

.method private static native nativeGetCipher()Ljava/lang/String;
.end method

.method private static native nativeGetIV()Ljava/lang/String;
.end method

.method private static toByte(Ljava/lang/String;)[B
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/baidu/sapi2/share/NativeCrypto;->appendHex(Ljava/lang/StringBuffer;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
