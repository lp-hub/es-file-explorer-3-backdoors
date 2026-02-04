.class public Lcom/baidu/sapi2/security/Base64;
.super Ljava/lang/Object;


# static fields
.field static sBaseSting:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/sapi2/security/Base64;->sBaseSting:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(CI)I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/sapi2/security/Base64;->sBaseSting:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/16 v2, 0x3d

    if-ne p0, v2, :cond_1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    const/16 v2, 0x40

    if-ge v0, v2, :cond_2

    aget-char v2, v1, v0

    if-ne v2, p0, :cond_0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decode(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v5, 0x3d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    rsub-int/lit8 v0, v0, 0x4

    :cond_0
    :goto_0
    if-lez v0, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-gt v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v1}, Lcom/baidu/sapi2/security/Base64;->decode(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v1}, Lcom/baidu/sapi2/security/Base64;->decode(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0xc

    add-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v1}, Lcom/baidu/sapi2/security/Base64;->decode(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v1}, Lcom/baidu/sapi2/security/Base64;->decode(CI)I

    move-result v4

    add-int/2addr v3, v4

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_2

    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_2

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0, v2}, Lcom/baidu/sapi2/security/Base64;->decode(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/sapi2/security/Base64;->encode([BIILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/sapi2/security/Base64;->sBaseSting:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    if-nez p3, :cond_0

    new-instance p3, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_0
    add-int/lit8 v2, p2, -0x3

    move v0, p1

    :goto_0
    if-gt v0, v2, :cond_1

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    shr-int/lit8 v4, v3, 0x12

    and-int/lit8 v4, v4, 0x3f

    aget-char v4, v1, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-char v4, v1, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-char v4, v1, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v1, v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_1
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_3

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v1, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v1, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v1, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    return-object p3

    :cond_3
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    shr-int/lit8 v2, v0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v1, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v1, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static needBase64(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x7a

    if-gt v2, v4, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x61

    if-ge v2, v4, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5a

    if-le v4, v5, :cond_4

    move v4, v3

    :goto_2
    and-int/2addr v2, v4

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x41

    if-ge v2, v4, :cond_5

    move v2, v3

    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-le v4, v5, :cond_6

    move v4, v3

    :goto_4
    and-int/2addr v2, v4

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-ge v2, v4, :cond_0

    :cond_2
    :goto_5
    return v3

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v4, v1

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_3

    :cond_6
    move v4, v1

    goto :goto_4

    :cond_7
    move v3, v1

    goto :goto_5
.end method
