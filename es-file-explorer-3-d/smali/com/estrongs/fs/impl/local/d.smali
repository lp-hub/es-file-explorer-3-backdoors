.class public Lcom/estrongs/fs/impl/local/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/estrongs/fs/impl/local/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 7

    const/4 v6, 0x7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/local/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v2

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->ba(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/estrongs/fs/impl/local/h;->j(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    new-instance v3, Lcom/estrongs/a/q;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz v2, :cond_0

    new-instance v3, Lcom/estrongs/a/q;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v2, v6, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "content://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, p2, v4

    if-ltz v1, :cond_5

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    new-instance v3, Lcom/estrongs/a/q;

    const-string v4, "offset > filesize"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/estrongs/fs/impl/local/a;

    invoke-direct {v1, v3, p2, p3}, Lcom/estrongs/fs/impl/local/a;-><init>(Ljava/io/File;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 3

    if-nez p2, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->ba(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/fs/impl/local/h;->j(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_1
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)Ljava/io/OutputStream;
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/d;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    new-instance v3, Lcom/estrongs/a/q;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-lez v3, :cond_3

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    new-instance v3, Lcom/estrongs/a/q;

    const-string v4, "offset > filesize"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/estrongs/fs/impl/local/c;

    invoke-direct {v0, v1, p1, p2}, Lcom/estrongs/fs/impl/local/c;-><init>(Ljava/io/File;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/fs/h;Lcom/estrongs/a/b/l;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/h;",
            "Lcom/estrongs/a/b/l",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/s;->a(Landroid/content/Context;)Lcom/estrongs/fs/impl/local/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/local/s;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    const/4 v0, 0x6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, v4

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    if-nez v2, :cond_b

    invoke-static {}, Lcom/estrongs/android/e/c;->a()Landroid/net/LocalSocket;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-eqz v4, :cond_0

    array-length v5, v4

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_a

    aget-object v6, v4, v1

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    if-nez v6, :cond_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    const/4 v7, 0x7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v3, v7, v8}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_8
    new-instance v7, Lcom/estrongs/fs/impl/local/b;

    invoke-direct {v7, v2, v6}, Lcom/estrongs/fs/impl/local/b;-><init>(Landroid/net/LocalSocket;Ljava/io/File;)V

    invoke-interface {p1, v7}, Lcom/estrongs/fs/h;->a(Lcom/estrongs/fs/g;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_9

    const/16 v6, 0xb

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v3, v6, v8}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_9
    invoke-interface {v7}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [J

    invoke-interface {p2, v6, v7}, Lcom/estrongs/a/b/l;->a(Ljava/lang/Object;[J)V

    invoke-interface {p2}, Lcom/estrongs/a/b/l;->a()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_a
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_b
    move-object v2, v1

    goto :goto_1
.end method

.method public static a(Ljava/io/File;)V
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/estrongs/android/util/aj;

    invoke-direct {v2, p0}, Lcom/estrongs/android/util/aj;-><init>(Ljava/lang/Object;)V

    const-string v3, "setReadable"

    invoke-virtual {v2, v3, v0, v1}, Lcom/estrongs/android/util/aj;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "setWritable"

    invoke-virtual {v2, v3, v0, v1}, Lcom/estrongs/android/util/aj;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "setExecutable"

    invoke-virtual {v2, v3, v0, v1}, Lcom/estrongs/android/util/aj;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/estrongs/fs/impl/local/d;->b(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/fs/g;)V
    .locals 3

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;Lcom/estrongs/fs/g;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/p;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    sget-object p2, Lcom/estrongs/a/b/p;->b:Lcom/estrongs/a/b/p;

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    if-nez v0, :cond_1

    invoke-static {p0, v1}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v1, [J

    invoke-interface {p2, p1, v0}, Lcom/estrongs/a/b/p;->a(Ljava/lang/Object;[J)V

    invoke-static {p1}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const-string v0, "file:///"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/estrongs/fs/impl/local/d;->a(Ljava/io/File;Lcom/estrongs/a/b/p;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/io/File;Lcom/estrongs/a/b/p;)Z
    .locals 14

    const-wide/16 v5, 0x0

    const/16 v13, 0xb

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-interface {p1}, Lcom/estrongs/a/b/p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    instance-of v0, v1, Lcom/estrongs/fs/b/o;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/o;

    iget-object v0, v0, Lcom/estrongs/fs/b/o;->j:Ljava/util/List;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/o;

    iget-object v0, v0, Lcom/estrongs/fs/b/o;->j:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v8

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_d

    instance-of v0, v1, Lcom/estrongs/fs/b/o;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/o;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [J

    invoke-interface {p1, v0, v3}, Lcom/estrongs/a/b/p;->a(Ljava/lang/Object;[J)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/b/o;->a(Ljava/io/File;)Z

    move-result v3

    :goto_2
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/b/o;->a(Ljava/lang/String;)V

    :cond_4
    move v0, v3

    move-wide v3, v5

    :goto_3
    if-eqz v0, :cond_0

    const-wide/16 v9, 0x1

    invoke-interface {p1, v9, v10}, Lcom/estrongs/a/b/p;->a(J)V

    instance-of v9, v1, Lcom/estrongs/fs/b/o;

    if-eqz v9, :cond_0

    new-array v9, v12, [Ljava/lang/Object;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    aput-object v2, v9, v8

    invoke-virtual {v1, v8, v9}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v7

    aput-object v2, v5, v8

    invoke-virtual {v1, v12, v5}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move v3, v8

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_8

    array-length v4, v3

    move v0, v7

    :goto_4
    if-ge v0, v4, :cond_8

    aget-object v9, v3, v0

    invoke-static {v9, p1}, Lcom/estrongs/fs/impl/local/d;->a(Ljava/io/File;Lcom/estrongs/a/b/p;)Z

    move-result v9

    if-nez v9, :cond_7

    move v0, v7

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [J

    invoke-interface {p1, v0, v3}, Lcom/estrongs/a/b/p;->a(Ljava/lang/Object;[J)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    instance-of v0, v1, Lcom/estrongs/fs/b/o;

    if-eqz v0, :cond_a

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/b/o;->a(Ljava/io/File;)Z

    move-result v3

    :goto_5
    if-eqz v3, :cond_9

    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of v0, v1, Lcom/estrongs/fs/b/o;

    if-eqz v0, :cond_c

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/o;

    iget-object v0, v0, Lcom/estrongs/fs/b/o;->h:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    if-nez v3, :cond_17

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v0

    if-lt v0, v13, :cond_17

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/f;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_7
    move-wide v3, v5

    goto/16 :goto_3

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_5

    :cond_b
    move v3, v8

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/d;->i(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [J

    invoke-interface {p1, v0, v3}, Lcom/estrongs/a/b/p;->a(Ljava/lang/Object;[J)V

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    :goto_8
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    instance-of v0, v1, Lcom/estrongs/fs/b/o;

    if-eqz v0, :cond_f

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/b/o;->a(Ljava/io/File;)Z

    move-result v9

    :goto_9
    if-eqz v9, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    instance-of v0, v1, Lcom/estrongs/fs/b/o;

    if-eqz v0, :cond_14

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/o;

    iget v10, v0, Lcom/estrongs/fs/b/o;->i:I

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/estrongs/fs/a/a;->h(Ljava/lang/String;)I

    move-result v11

    or-int/2addr v10, v11

    iput v10, v0, Lcom/estrongs/fs/b/o;->i:I

    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/o;

    iget-object v0, v0, Lcom/estrongs/fs/b/o;->h:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_a
    if-nez v9, :cond_15

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v0

    if-lt v0, v13, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/f;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_3

    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v9

    goto :goto_9

    :cond_10
    move v9, v8

    goto :goto_9

    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/o;

    iget-object v0, v0, Lcom/estrongs/fs/b/o;->e:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/o;

    iget-object v0, v0, Lcom/estrongs/fs/b/o;->f:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/o;

    iget-object v0, v0, Lcom/estrongs/fs/b/o;->g:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/d;->i(Ljava/lang/String;)V

    goto :goto_a

    :cond_15
    move v0, v9

    goto/16 :goto_3

    :cond_16
    move-wide v3, v5

    goto/16 :goto_8

    :cond_17
    move v0, v3

    goto/16 :goto_7

    :cond_18
    move-object v2, v0

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/s;->a(Landroid/content/Context;)Lcom/estrongs/fs/impl/local/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/local/s;->b(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/fs/b/ab;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/fs/b/g;

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/estrongs/fs/impl/local/e;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/fs/impl/local/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/local/e;->start()V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/local/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/estrongs/fs/impl/local/d;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;ZZ)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    :cond_2
    :goto_1
    sget-boolean v2, Lcom/estrongs/android/pop/m;->V:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_3

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/d;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->bg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/local/f;->b(Ljava/lang/String;Z)Z

    move-result v0

    :cond_4
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {p0}, Lcom/estrongs/fs/impl/media/e;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/bt;->b()V

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/b;
    .locals 2

    const-string v0, "file:///"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    :goto_0
    new-instance v1, Lcom/estrongs/fs/impl/local/b;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/impl/local/b;-><init>(Ljava/io/File;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->ba(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->e(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/FileSystemException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->bg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, v4}, Lcom/estrongs/fs/impl/local/f;->a(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    sget-boolean v2, Lcom/estrongs/android/pop/m;->V:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/d;->a(Ljava/io/File;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static b(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-static {v3, p1, p2, p3, p4}, Lcom/estrongs/fs/impl/local/d;->b(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/d;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/estrongs/fs/impl/local/d;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/estrongs/fs/c;
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/d;->d(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v3

    iget-boolean v4, v1, Lcom/estrongs/fs/c;->d:Z

    if-eqz v4, :cond_3

    invoke-static {v0, v2}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Folder"

    iput-object v0, v1, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v5, v4

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_3

    aget-object v2, v4, v0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/estrongs/fs/c;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/estrongs/fs/c;->f:I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v2, v1, Lcom/estrongs/fs/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/estrongs/fs/c;->g:I

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Lcom/estrongs/fs/c;
    .locals 5

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1, v3}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->d(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/estrongs/fs/c;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "Folder"

    iput-object v1, v0, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    :goto_0
    iget-object v1, v0, Lcom/estrongs/fs/c;->o:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->m:Z

    :goto_1
    return-object v0

    :cond_0
    const-string v1, "File"

    iput-object v1, v0, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-boolean v3, v0, Lcom/estrongs/fs/c;->m:Z

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/estrongs/fs/c;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->d:Z

    const-string v1, "File"

    iput-object v1, v0, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/estrongs/fs/c;->e:J

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/estrongs/fs/c;->j:J

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->k:Z

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->l:Z

    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->m:Z

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->d(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-boolean v3, v2, Lcom/estrongs/fs/c;->d:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, v2, Lcom/estrongs/fs/c;->e:J

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/local/d;->b(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/d;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-static {p0, v3}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/d;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    :goto_2
    sget-boolean v3, Lcom/estrongs/android/pop/m;->V:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v3

    const/16 v4, 0x9

    if-lt v3, v4, :cond_5

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/d;->a(Ljava/io/File;)V

    :cond_5
    if-nez v1, :cond_6

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v2

    const/16 v3, 0xb

    if-lt v2, v3, :cond_6

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->bg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/local/f;->b(Ljava/lang/String;Z)Z

    move-result v1

    :cond_6
    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_1

    :cond_7
    move v1, v0

    goto :goto_2
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->d(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/estrongs/fs/c;->d:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/estrongs/fs/impl/media/e;->e(Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/estrongs/fs/impl/media/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/p/b;->b()Lcom/estrongs/fs/impl/p/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/p/b;->b(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/fs/impl/media/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/fs/impl/h/b;->b()Lcom/estrongs/fs/impl/h/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/h/b;->b(Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/estrongs/fs/impl/media/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/j/b;->b(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/estrongs/fs/impl/media/e;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/estrongs/fs/impl/media/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/p/b;->b()Lcom/estrongs/fs/impl/p/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/bt;->b()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/estrongs/fs/impl/media/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/fs/impl/h/b;->b()Lcom/estrongs/fs/impl/h/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/h/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/estrongs/fs/impl/media/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
