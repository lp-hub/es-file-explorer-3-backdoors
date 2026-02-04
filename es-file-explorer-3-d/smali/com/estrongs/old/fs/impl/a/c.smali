.class public Lcom/estrongs/old/fs/impl/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/old/fs/a;


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/ftp/FTPClient;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/ftp/FTPClient;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/estrongs/old/fs/impl/a/c;

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/old/fs/impl/a/g;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/TypedMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/old/fs/impl/a/c;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/old/fs/impl/a/c;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/old/fs/impl/a/c;->c:Lcom/estrongs/old/fs/impl/a/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/old/fs/impl/a/c;->d:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/old/fs/impl/a/c;->e:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/estrongs/old/fs/a;
    .locals 1

    sget-object v0, Lcom/estrongs/old/fs/impl/a/c;->c:Lcom/estrongs/old/fs/impl/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/old/fs/impl/a/c;

    invoke-direct {v0}, Lcom/estrongs/old/fs/impl/a/c;-><init>()V

    sput-object v0, Lcom/estrongs/old/fs/impl/a/c;->c:Lcom/estrongs/old/fs/impl/a/c;

    :cond_0
    sget-object v0, Lcom/estrongs/old/fs/impl/a/c;->c:Lcom/estrongs/old/fs/impl/a/c;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Lcom/estrongs/old/fs/impl/a/g;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/estrongs/old/fs/impl/a/c;->b(Ljava/lang/String;Lcom/estrongs/old/fs/impl/a/g;)V

    return-void
.end method

.method private a(Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;)Z
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    const-string v2, "."

    invoke-virtual {p1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    array-length v3, v2

    if-ne v3, v0, :cond_9

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_1

    array-length v6, v4

    move v3, v1

    :goto_1
    if-lt v3, v6, :cond_3

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->removeDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "ftp://"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v5, v1, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return v0

    :cond_3
    aget-object v2, v4, v3

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v7

    if-eqz v7, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/estrongs/old/fs/impl/a/c;->k(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;)Z

    move-result v2

    :cond_7
    :goto_3
    if-nez v2, :cond_5

    move v0, v1

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v7}, Lorg/apache/commons/net/ftp/FTPClient;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v5, :cond_7

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide/16 v11, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ftp://"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v10

    invoke-virtual {v5, v8, v9}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    move-object v4, v2

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;Lcom/estrongs/old/fs/impl/a/g;)V
    .locals 3

    sget-object v2, Lcom/estrongs/old/fs/impl/a/c;->d:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/estrongs/old/fs/impl/a/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_0
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/estrongs/old/fs/impl/a/c;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method private j(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v3, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_1
    new-instance v3, Lcom/estrongs/old/fs/impl/a/b;

    invoke-direct {v3, v1, v2}, Lcom/estrongs/old/fs/impl/a/b;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :try_start_2
    invoke-virtual {v1, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->setRestartOffset(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setKeepAlive(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setRemoteVerificationEnabled(Z)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setFileTransferMode(I)Z

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    if-nez v0, :cond_b

    :try_start_3
    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v2

    :goto_1
    :try_start_4
    new-instance v0, Lcom/estrongs/old/fs/impl/a/b;

    invoke-direct {v0, v2, v1}, Lcom/estrongs/old/fs/impl/a/b;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    :try_end_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_2

    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v1

    :goto_2
    :try_start_6
    new-instance v0, Lcom/estrongs/old/fs/impl/a/b;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/old/fs/impl/a/b;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_3
    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_9

    move-result-object v1

    :goto_4
    :try_start_8
    new-instance v0, Lcom/estrongs/old/fs/impl/a/b;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/old/fs/impl/a/b;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_5
    :try_start_9
    new-instance v5, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v5, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v0

    :goto_6
    if-nez v2, :cond_8

    if-eqz v1, :cond_6

    :try_start_a
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_6
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_7
    new-instance v3, Lcom/estrongs/old/fs/impl/a/b;

    invoke-direct {v3, v1, v2}, Lcom/estrongs/old/fs/impl/a/b;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    :cond_8
    :goto_7
    throw v0

    :catch_4
    move-exception v1

    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_6

    :catch_6
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_5

    :catch_7
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_5

    :catch_9
    move-exception v1

    goto/16 :goto_0

    :catch_a
    move-exception v2

    goto/16 :goto_3

    :catch_b
    move-exception v0

    move-object v0, v2

    goto/16 :goto_3

    :catch_c
    move-exception v1

    goto/16 :goto_0

    :cond_9
    move-object v1, v0

    goto/16 :goto_2

    :cond_a
    move-object v1, v0

    goto :goto_4

    :cond_b
    move-object v2, v0

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/fs/h;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/h;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v8

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    if-nez v2, :cond_1

    :try_start_1
    new-instance v0, Ljava/net/ConnectException;

    invoke-direct {v0}, Ljava/net/ConnectException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_0
    :try_start_2
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    throw v0

    :cond_1
    if-eqz v8, :cond_3

    :try_start_4
    invoke-virtual {v8}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_2
    :goto_3
    move-object v0, v1

    :goto_4
    return-object v0

    :cond_3
    :try_start_6
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v0

    const/16 v3, 0x226

    if-ne v0, v3, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "550"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_4
    const-string v0, "."

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v3, v0

    if-eqz v3, :cond_5

    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_5
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    move-object v7, v0

    :goto_5
    const-string v3, "UTF-8"

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/c;->e:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/TypedMap;

    if-eqz v0, :cond_6

    const-string v4, "encode"

    invoke-virtual {v0, v4, v3}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    sget-object v4, Lcom/estrongs/android/util/g;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "UTF-8"

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "detectedEncoding"

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v7, :cond_8

    array-length v9, v7
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v0, 0x0

    move v6, v0

    move-object v0, p1

    :goto_6
    if-lt v6, v9, :cond_a

    :cond_8
    if-eqz v2, :cond_9

    :try_start_7
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_9
    :goto_7
    move-object v0, v1

    goto/16 :goto_4

    :cond_a
    :try_start_8
    aget-object v10, v7, v6

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v2, :cond_b

    :try_start_9
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_b
    :goto_8
    move-object v0, v1

    goto/16 :goto_4

    :cond_c
    if-nez v10, :cond_e

    :cond_d
    :goto_9
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_6

    :cond_e
    :try_start_a
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f
    invoke-virtual {v10}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v10}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    :goto_a
    const/4 v3, 0x0

    invoke-virtual {v10}, Lorg/apache/commons/net/ftp/FTPFile;->isSymbolicLink()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v10}, Lorg/apache/commons/net/ftp/FTPFile;->getLink()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    :cond_10
    :goto_b
    new-instance v4, Lcom/estrongs/old/fs/impl/a/a;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v10, v5, v3}, Lcom/estrongs/old/fs/impl/a/a;-><init>(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_d

    invoke-interface {p2, v4}, Lcom/estrongs/fs/h;->a(Lcom/estrongs/fs/g;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    :goto_c
    invoke-virtual {v10, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_b

    :cond_12
    const/4 v4, 0x0

    goto :goto_c

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :catch_2
    move-exception v1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_8

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :cond_13
    move-object v5, v3

    goto :goto_a

    :cond_14
    move-object v7, v0

    goto/16 :goto_5
.end method

.method public a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    .locals 16

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ak;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ak;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ak;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ak;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x1

    const-string v2, "UTF-8"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/old/fs/impl/a/c;->e:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/util/TypedMap;

    if-eqz v1, :cond_19

    const-string v3, "mode"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "encode"

    invoke-virtual {v1, v4, v2}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    move v5, v3

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ak;->l(Ljava/lang/String;)Z

    move-result v12

    if-nez v6, :cond_0

    if-eqz v12, :cond_3

    const-string v2, "990"

    move-object v6, v2

    :cond_0
    :goto_1
    const/4 v3, 0x0

    :try_start_0
    sget-object v13, Lcom/estrongs/old/fs/impl/a/c;->d:Ljava/util/HashMap;

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/estrongs/old/fs/impl/a/c;->d:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "@"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "@"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_18

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/estrongs/old/fs/impl/a/c;->d:Ljava/util/HashMap;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "@"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "@"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v2

    :goto_2
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_6

    new-instance v7, Lcom/estrongs/old/fs/impl/a/g;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lcom/estrongs/old/fs/impl/a/g;-><init>(Lcom/estrongs/old/fs/impl/a/g;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v12, :cond_e

    :try_start_3
    const-string v2, "ftps://"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    new-instance v2, Lcom/estrongs/old/fs/impl/a/f;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "@"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "@"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13, v7, v3}, Lcom/estrongs/old/fs/impl/a/f;-><init>(Ljava/lang/String;Lcom/estrongs/old/fs/impl/a/g;Z)V

    invoke-static {}, Lorg/apache/commons/net/util/TrustManagerUtils;->getAcceptAllTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPSClient;->setTrustManager(Ljavax/net/ssl/TrustManager;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPSClient;->setNeedClientAuth(Z)V

    :goto_4
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->setListHiddenFiles(Z)V

    iput-object v2, v7, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    iput-object v4, v7, Lcom/estrongs/old/fs/impl/a/g;->b:Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/util/g;->a:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v3, v3, v13

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "detectedEncoding"

    invoke-virtual {v1, v3}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "detectedEncoding"

    invoke-virtual {v1, v3}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/estrongs/old/fs/impl/a/g;->b:Ljava/lang/String;

    :cond_1
    iget-object v1, v7, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v3, v7, Lcom/estrongs/old/fs/impl/a/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->setControlEncoding(Ljava/lang/String;)V

    const v1, 0x9c40

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setConnectTimeout(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v1, -0x1

    if-eqz v6, :cond_2

    :try_start_4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v1

    :cond_2
    :goto_5
    const/4 v3, -0x1

    if-eq v1, v3, :cond_f

    :try_start_5
    invoke-virtual {v2, v10, v1}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;I)V

    :goto_6
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_3
    const-string v2, "21"

    move-object v6, v2

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v1

    move-object v2, v1

    :goto_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v3, :cond_5

    iget-object v1, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v1, :cond_5

    :try_start_8
    iget-object v1, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    instance-of v1, v1, Lcom/estrongs/old/fs/impl/a/d;

    if-eqz v1, :cond_16

    iget-object v1, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    check-cast v1, Lcom/estrongs/old/fs/impl/a/d;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/estrongs/old/fs/impl/a/d;->a:Z

    :cond_4
    :goto_9
    iget-object v1, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    iget-object v1, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_a
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v2}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    :try_start_9
    monitor-enter v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/old/fs/impl/a/g;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    iget-object v3, v2, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v2, Lcom/estrongs/old/fs/impl/a/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iput-object v4, v2, Lcom/estrongs/old/fs/impl/a/g;->b:Ljava/lang/String;

    iget-object v3, v2, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v13, v2, Lcom/estrongs/old/fs/impl/a/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lorg/apache/commons/net/ftp/FTPClient;->setControlEncoding(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :cond_7
    :try_start_d
    iget-object v3, v2, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3, v11}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    sget-object v3, Lcom/estrongs/android/util/g;->a:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v3, v3, v13

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "detectedEncoding"

    invoke-virtual {v1, v3}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, v2, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v3

    const-string v13, "detectedEncoding"

    invoke-virtual {v1, v13}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v2, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    const-string v13, "detectedEncoding"

    invoke-virtual {v1, v13}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lorg/apache/commons/net/ftp/FTPClient;->setControlEncoding(Ljava/lang/String;)V

    :cond_8
    if-eqz v5, :cond_a

    iget-boolean v3, v2, Lcom/estrongs/old/fs/impl/a/g;->c:Z

    if-nez v3, :cond_a

    iget-object v3, v2, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/estrongs/old/fs/impl/a/g;->c:Z

    :cond_9
    :goto_b
    iget-object v1, v2, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_d
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_7

    :catchall_1
    move-exception v1

    move-object v2, v3

    :goto_c
    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    :catch_1
    move-exception v1

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_8

    :cond_a
    if-nez v5, :cond_9

    :try_start_10
    iget-boolean v3, v2, Lcom/estrongs/old/fs/impl/a/g;->c:Z

    if-eqz v3, :cond_9

    iget-object v3, v2, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalActiveMode()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/estrongs/old/fs/impl/a/g;->c:Z
    :try_end_10
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    goto :goto_b

    :catch_2
    move-exception v3

    :cond_b
    :goto_d
    :try_start_11
    iget-object v3, v2, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    instance-of v3, v3, Lcom/estrongs/old/fs/impl/a/d;

    if-eqz v3, :cond_d

    iget-object v3, v2, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    check-cast v3, Lcom/estrongs/old/fs/impl/a/d;

    const/4 v13, 0x1

    iput-boolean v13, v3, Lcom/estrongs/old/fs/impl/a/d;->a:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    :cond_c
    :goto_e
    :try_start_12
    iget-object v3, v2, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    :goto_f
    :try_start_13
    iget-object v3, v2, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    :goto_10
    const/4 v3, 0x0

    :try_start_14
    iput-object v3, v2, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_d
    iget-object v3, v2, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    instance-of v3, v3, Lcom/estrongs/old/fs/impl/a/f;

    if-eqz v3, :cond_c

    iget-object v3, v2, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    check-cast v3, Lcom/estrongs/old/fs/impl/a/f;

    const/4 v13, 0x1

    iput-boolean v13, v3, Lcom/estrongs/old/fs/impl/a/f;->a:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    goto :goto_e

    :cond_e
    :try_start_15
    new-instance v2, Lcom/estrongs/old/fs/impl/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "@"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "@"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v7}, Lcom/estrongs/old/fs/impl/a/d;-><init>(Ljava/lang/String;Lcom/estrongs/old/fs/impl/a/g;)V

    goto/16 :goto_4

    :catch_3
    move-exception v1

    move-object v2, v1

    move-object v3, v7

    goto/16 :goto_8

    :catch_4
    move-exception v1

    const/4 v1, -0x1

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v2, v10}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3

    goto/16 :goto_6

    :cond_10
    if-eqz v12, :cond_11

    :try_start_16
    move-object v0, v2

    check-cast v0, Lorg/apache/commons/net/ftp/FTPSClient;

    move-object v1, v0

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/net/ftp/FTPSClient;->execPBSZ(J)V

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/net/ftp/FTPSClient;

    move-object v1, v0

    const-string v3, "P"

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPSClient;->execPROT(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    :cond_11
    :goto_11
    if-nez v9, :cond_17

    :try_start_17
    const-string v3, "Anonymous"

    const-string v1, ""

    :goto_12
    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v1

    const/16 v3, 0x212

    if-ne v1, v3, :cond_12

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "530"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    invoke-static {v1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_13
    if-eqz v11, :cond_14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_14

    invoke-virtual {v2, v11}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    :cond_14
    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    if-eqz v5, :cond_15

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/estrongs/old/fs/impl/a/g;->c:Z

    :goto_13
    const v1, 0x9c40

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setDefaultTimeout(I)V

    iget-object v1, v7, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    goto/16 :goto_7

    :cond_15
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalActiveMode()V

    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/estrongs/old/fs/impl/a/g;->c:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3

    goto :goto_13

    :cond_16
    :try_start_18
    iget-object v1, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    instance-of v1, v1, Lcom/estrongs/old/fs/impl/a/f;

    if-eqz v1, :cond_4

    iget-object v1, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    check-cast v1, Lcom/estrongs/old/fs/impl/a/f;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/estrongs/old/fs/impl/a/f;->a:Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_5

    goto/16 :goto_9

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    :catch_6
    move-exception v1

    goto :goto_11

    :catch_7
    move-exception v3

    goto/16 :goto_10

    :catch_8
    move-exception v3

    goto/16 :goto_f

    :catch_9
    move-exception v3

    goto/16 :goto_d

    :catchall_2
    move-exception v1

    goto/16 :goto_c

    :cond_17
    move-object v1, v8

    move-object v3, v9

    goto :goto_12

    :cond_18
    move-object v7, v2

    goto/16 :goto_2

    :cond_19
    move-object v4, v2

    move v5, v3

    goto/16 :goto_0
.end method

.method public a(Lcom/estrongs/android/util/TypedMap;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/c;->e:Ljava/util/HashMap;

    const-string v1, "server"

    invoke-virtual {p1, v1}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/TypedMap;

    if-eqz v0, :cond_0

    const-string v1, "detectedEncoding"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "detectedEncoding"

    const-string v2, "detectedEncoding"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/c;->e:Ljava/util/HashMap;

    const-string v1, "server"

    invoke-virtual {p1, v1}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/fs/g;)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v3, Ljava/util/Date;

    invoke-interface {p2}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setModificationTime(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    :try_start_5
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_2
    :goto_3
    throw v0

    :catch_4
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :try_start_4
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_5

    :goto_2
    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_4
    move-object v0, v2

    check-cast v0, Lcom/estrongs/old/fs/impl/a/d;

    move-object v1, v0

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/estrongs/old/fs/impl/a/d;->a:Z
    :try_end_5
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v1, v3

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_2

    :catch_1
    move-exception v3

    :goto_3
    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v1

    :try_start_7
    new-instance v3, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v3, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_6
    :goto_4
    throw v1

    :catch_4
    move-exception v2

    goto :goto_4

    :catch_5
    move-exception v1

    move v1, v3

    goto :goto_3

    :catch_6
    move-exception v2

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    :cond_2
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_5
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_1
    throw v0

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-ne v4, v1, :cond_3

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_4
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v4

    move-object v4, v7

    :goto_2
    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->listNames()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    move v3, v0

    :goto_3
    array-length v6, v5
    :try_end_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lt v3, v6, :cond_6

    :cond_4
    :goto_4
    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :try_start_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v4

    move-object v4, v7

    goto :goto_2

    :cond_6
    aget-object v6, v5, v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v6

    if-eqz v6, :cond_7

    move v0, v1

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_8
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_8

    :try_start_9
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_8
    :goto_6
    throw v0

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    move-object v1, v2

    goto :goto_5

    :catch_6
    move-exception v0

    goto/16 :goto_1

    :catch_7
    move-exception v1

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/estrongs/old/fs/impl/a/c;->j(Ljava/lang/String;)Z

    move-result v4

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_4

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_2
    :goto_2
    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_6

    const-string v0, "/"

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v4, :cond_7

    invoke-direct {p0, v2, v3}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;)Z

    :goto_4
    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    move-object v3, p2

    goto :goto_1

    :cond_4
    :try_start_4
    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v6

    if-eqz v6, :cond_5

    array-length v6, v6

    if-gtz v6, :cond_2

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    const-string v0, ""

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v3}, Lcom/estrongs/old/fs/impl/a/c;->c(Ljava/lang/String;)Z
    :try_end_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_5
    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_8
    :try_start_6
    invoke-virtual {v2, v5, v3}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v1

    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_8
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_9

    :try_start_9
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_9
    :goto_6
    throw v0

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v0, v2

    goto :goto_5

    :catch_7
    move-exception v0

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_2
.end method

.method public c(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/estrongs/old/fs/impl/a/c;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v0

    const/16 v4, 0x226

    if-ne v0, v4, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v2, "550"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_1
    throw v0

    :cond_4
    :try_start_7
    invoke-static {v3}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    :cond_5
    if-eqz v2, :cond_6

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ftp://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    :goto_2
    if-eqz v1, :cond_0

    :try_start_8
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :cond_7
    :try_start_9
    invoke-direct {p0, v1, v3}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto/16 :goto_0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    return v0

    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    :cond_3
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_2
    throw v0

    :catch_2
    move-exception v0

    :try_start_6
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)J
    .locals 11

    const-wide/16 v1, -0x1

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    :cond_0
    :goto_0
    move-wide v0, v1

    :cond_1
    :goto_1
    return-wide v0

    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    move-object v6, v0

    :goto_2
    if-lt v4, v10, :cond_6

    :cond_3
    :try_start_3
    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    move v6, v5

    :goto_3
    if-lt v6, v10, :cond_8

    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_5
    :goto_5
    move-wide v0, v1

    goto :goto_1

    :cond_6
    :try_start_5
    invoke-virtual {v3, v6}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v7

    if-eqz v7, :cond_7

    array-length v8, v7

    if-lez v8, :cond_7

    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J
    :try_end_5
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v0

    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_7
    :try_start_7
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, " "

    const-string v8, "\\ "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    :try_start_8
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v8

    if-eqz v8, :cond_b

    array-length v4, v8

    if-lez v4, :cond_b

    move v4, v5

    :goto_6
    array-length v9, v8

    if-lt v4, v9, :cond_9

    :goto_7
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_3

    :cond_9
    aget-object v9, v8, v4

    invoke-virtual {v9}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    aget-object v0, v8, v4

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-wide v0

    if-eqz v3, :cond_1

    :try_start_9
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    :try_start_a
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, " "

    const-string v8, "\\ "

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    goto :goto_7

    :catch_2
    move-exception v3

    :goto_8
    if-eqz v0, :cond_5

    :try_start_b
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_9
    :try_start_c
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_0
    move-exception v0

    :goto_a
    if-eqz v3, :cond_c

    :try_start_d
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :cond_c
    :goto_b
    throw v0

    :catch_5
    move-exception v0

    goto/16 :goto_5

    :catch_6
    move-exception v1

    goto :goto_b

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v0

    move-object v0, v3

    goto :goto_8

    :catch_9
    move-exception v0

    goto/16 :goto_4

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/old/fs/impl/a/c;->j(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)Lcom/estrongs/fs/c;
    .locals 10

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    move v5, v3

    move-object v6, v1

    :goto_1
    if-lt v5, v9, :cond_4

    :cond_2
    :try_start_3
    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v1

    move v1, v3

    :goto_2
    if-lt v1, v9, :cond_c

    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_4
    :try_start_5
    invoke-virtual {v2, v6}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v7

    if-eqz v7, :cond_b

    array-length v8, v7

    if-lez v8, :cond_b

    new-instance v1, Lcom/estrongs/fs/c;

    invoke-direct {v1, p1}, Lcom/estrongs/fs/c;-><init>(Ljava/lang/String;)V

    array-length v5, v7

    if-le v5, v4, :cond_6

    :goto_4
    iput-boolean v4, v1, Lcom/estrongs/fs/c;->d:Z

    iget-boolean v4, v1, Lcom/estrongs/fs/c;->d:Z

    if-eqz v4, :cond_9

    array-length v4, v7

    :goto_5
    if-lt v3, v4, :cond_7

    :goto_6
    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/estrongs/fs/c;->j:J

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/estrongs/fs/c;->m:Z

    const/4 v3, 0x0

    aget-object v3, v7, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v3

    iput-boolean v3, v1, Lcom/estrongs/fs/c;->k:Z

    const/4 v3, 0x0

    aget-object v3, v7, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v3

    iput-boolean v3, v1, Lcom/estrongs/fs/c;->l:Z
    :try_end_5
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    :cond_5
    :goto_7
    move-object v0, v1

    goto :goto_0

    :cond_6
    move v4, v3

    goto :goto_4

    :cond_7
    :try_start_7
    aget-object v5, v7, v3

    invoke-virtual {v5}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v1, Lcom/estrongs/fs/c;->f:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/estrongs/fs/c;->f:I

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    iget v5, v1, Lcom/estrongs/fs/c;->g:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/estrongs/fs/c;->g:I
    :try_end_7
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    :catch_1
    move-exception v1

    move-object v1, v2

    :goto_9
    if-eqz v1, :cond_0

    :try_start_8
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :cond_9
    :try_start_9
    const-string v3, "File"

    iput-object v3, v1, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/estrongs/fs/c;->e:J
    :try_end_9
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_a
    :try_start_a
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception v0

    :goto_b
    if-eqz v2, :cond_a

    :try_start_b
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_a
    :goto_c
    throw v0

    :cond_b
    :try_start_c
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, " "

    const-string v8, "\\ "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_c
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_c
    :try_start_d
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v6

    if-eqz v6, :cond_12

    array-length v7, v6

    if-lez v7, :cond_12

    new-instance v1, Lcom/estrongs/fs/c;

    invoke-direct {v1, p1}, Lcom/estrongs/fs/c;-><init>(Ljava/lang/String;)V

    array-length v5, v6

    if-le v5, v4, :cond_e

    :goto_d
    iput-boolean v4, v1, Lcom/estrongs/fs/c;->d:Z

    iget-boolean v4, v1, Lcom/estrongs/fs/c;->d:Z

    if-eqz v4, :cond_11

    array-length v4, v6

    :goto_e
    if-lt v3, v4, :cond_f

    :goto_f
    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/estrongs/fs/c;->j:J

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/estrongs/fs/c;->m:Z

    const/4 v3, 0x0

    aget-object v3, v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v3

    iput-boolean v3, v1, Lcom/estrongs/fs/c;->k:Z

    const/4 v3, 0x0

    aget-object v3, v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v3

    iput-boolean v3, v1, Lcom/estrongs/fs/c;->l:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v2, :cond_d

    :try_start_e
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :cond_d
    :goto_10
    move-object v0, v1

    goto/16 :goto_0

    :cond_e
    move v4, v3

    goto :goto_d

    :cond_f
    :try_start_f
    aget-object v5, v6, v3

    invoke-virtual {v5}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_10

    iget v5, v1, Lcom/estrongs/fs/c;->f:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/estrongs/fs/c;->f:I

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_10
    iget v5, v1, Lcom/estrongs/fs/c;->g:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/estrongs/fs/c;->g:I

    goto :goto_11

    :catch_4
    move-exception v1

    goto/16 :goto_3

    :cond_11
    const-string v3, "File"

    iput-object v3, v1, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/estrongs/fs/c;->e:J

    goto :goto_f

    :cond_12
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, " "

    const-string v7, "\\ "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :catch_5
    move-exception v1

    goto/16 :goto_c

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_b

    :catch_6
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_a

    :catch_7
    move-exception v1

    move-object v1, v0

    goto/16 :goto_9

    :catch_8
    move-exception v0

    goto :goto_10

    :catch_9
    move-exception v0

    goto/16 :goto_7

    :catch_a
    move-exception v1

    goto/16 :goto_0
.end method

.method public h(Ljava/lang/String;)Lcom/estrongs/fs/g;
    .locals 10

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    :cond_0
    :goto_0
    move-object v0, v1

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v3, v4

    move-object v5, v0

    :goto_2
    if-lt v3, v9, :cond_6

    :cond_3
    :try_start_3
    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    move v5, v4

    :goto_3
    if-lt v5, v9, :cond_8

    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_5
    :goto_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    :try_start_5
    invoke-virtual {v2, v5}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v6

    if-eqz v6, :cond_7

    array-length v7, v6

    if-lez v7, :cond_7

    new-instance v0, Lcom/estrongs/old/fs/impl/a/a;

    const/4 v3, 0x0

    aget-object v3, v6, v3

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPFile;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, p1, v4}, Lcom/estrongs/old/fs/impl/a/a;-><init>(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_7
    :try_start_7
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, " "

    const-string v7, "\\ "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :try_start_8
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v7

    if-eqz v7, :cond_b

    array-length v3, v7

    if-lez v3, :cond_b

    move v3, v4

    :goto_6
    array-length v8, v7

    if-lt v3, v8, :cond_9

    :goto_7
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3

    :cond_9
    aget-object v8, v7, v3

    invoke-virtual {v8}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance v0, Lcom/estrongs/old/fs/impl/a/a;

    aget-object v4, v7, v3

    aget-object v3, v7, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, p1, v3}, Lcom/estrongs/old/fs/impl/a/a;-><init>(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_1

    :try_start_9
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    :try_start_a
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, " "

    const-string v7, "\\ "

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_8
    if-eqz v0, :cond_5

    :try_start_b
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_5

    :catch_3
    move-exception v0

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move-object v2, v1

    :goto_9
    if-eqz v2, :cond_5

    :try_start_c
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_5

    :catch_5
    move-exception v0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_a
    if-eqz v2, :cond_c

    :try_start_d
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :cond_c
    :goto_b
    throw v0

    :catch_6
    move-exception v0

    goto/16 :goto_5

    :catch_7
    move-exception v1

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    goto :goto_9

    :catch_9
    move-exception v0

    move-object v0, v2

    goto :goto_8

    :catch_a
    move-exception v0

    goto/16 :goto_4

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method

.method public i(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v3, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_2
    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    if-nez v2, :cond_3

    :try_start_3
    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_3
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    :cond_3
    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_4
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v2

    :cond_5
    :goto_1
    if-eqz v2, :cond_1

    new-instance v0, Lcom/estrongs/old/fs/impl/a/e;

    invoke-direct {v0, v2, v1}, Lcom/estrongs/old/fs/impl/a/e;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_2
    if-nez v2, :cond_5

    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_6
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v2

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_3
    :try_start_6
    new-instance v5, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v5, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-nez v2, :cond_8

    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_7
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_8
    :goto_5
    throw v0

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v3

    goto :goto_1

    :catch_7
    move-exception v2

    move-object v2, v0

    goto :goto_2

    :catch_8
    move-exception v5

    goto :goto_2

    :catch_9
    move-exception v1

    goto/16 :goto_0
.end method
