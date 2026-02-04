.class public Lcom/baidu/sapi2/account/AccountStorage;
.super Ljava/lang/Object;


# static fields
.field private static final STORAGE_ACCOUNT_FILENAME:Ljava/lang/String; = "Baidu_Storage_ACS"

.field private static volatile accountStorage:Lcom/baidu/sapi2/account/AccountStorage;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/sapi2/account/AccountStorage;->accountStorage:Lcom/baidu/sapi2/account/AccountStorage;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/sapi2/account/AccountStorage;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/baidu/sapi2/account/AccountStorage;->mContext:Landroid/content/Context;

    return-void
.end method

.method private decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1, p2}, Lcom/baidu/sapi2/share/NativeCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1, p2}, Lcom/baidu/sapi2/share/NativeCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/account/AccountStorage;
    .locals 2

    sget-object v0, Lcom/baidu/sapi2/account/AccountStorage;->accountStorage:Lcom/baidu/sapi2/account/AccountStorage;

    if-nez v0, :cond_1

    const-class v1, Lcom/baidu/sapi2/account/AccountStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/sapi2/account/AccountStorage;->accountStorage:Lcom/baidu/sapi2/account/AccountStorage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/sapi2/account/AccountStorage;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/account/AccountStorage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/sapi2/account/AccountStorage;->accountStorage:Lcom/baidu/sapi2/account/AccountStorage;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/baidu/sapi2/account/AccountStorage;->accountStorage:Lcom/baidu/sapi2/account/AccountStorage;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public blockClear()Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountStorage;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountStorage;->mContext:Landroid/content/Context;

    const-string v1, "Baidu_Storage_ACS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public blockReceive()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountStorage;->mContext:Landroid/content/Context;

    const-string v4, "Baidu_Storage_ACS"

    invoke-virtual {v2, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_0
    return-object v0

    :cond_0
    const/16 v4, 0x800

    new-array v4, v4, [B

    :goto_1
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountStorage;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v1, v4}, Lcom/baidu/sapi2/account/AccountStorage;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public blockUpdate(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountStorage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/baidu/sapi2/account/AccountStorage;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/baidu/sapi2/account/AccountStorage;->mContext:Landroid/content/Context;

    const-string v4, "Baidu_Storage_ACS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
