.class public Lcom/estrongs/android/pop/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/b;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/b;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/b;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/b;->d:Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()V
    .locals 2

    sget-object v1, Lcom/estrongs/android/pop/b;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/estrongs/android/pop/b;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/b;->c:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/b;->c()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/estrongs/android/pop/b;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/b;->c()V

    sget-object v0, Lcom/estrongs/android/pop/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/b;->c:Ljava/lang/String;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c()V
    .locals 9

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/estrongs/android/pop/b;->b:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v5, Lcom/estrongs/android/pop/b;->b:Z

    const-string v2, "/sdcard"

    invoke-static {v2}, Lcom/estrongs/android/pop/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-boolean v5, Lcom/estrongs/android/pop/b;->a:Z

    sput-object v3, Lcom/estrongs/android/pop/b;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/sdcard/.estrongs"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/sdcard/.estrongs/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/.estrongs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/b;->a:Z

    sput-object v4, Lcom/estrongs/android/pop/b;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Lcom/estrongs/android/pop/b;->a:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/b;->c:Ljava/lang/String;

    const-string v1, "/storage/emulated/legacy"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_2
    const/4 v1, 0x3

    if-ge v0, v1, :cond_6

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/storage/emulated/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/.estrongs"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/storage/emulated/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/b;->c:Ljava/lang/String;

    :cond_6
    sget-object v0, Lcom/estrongs/android/pop/b;->c:Ljava/lang/String;

    if-nez v0, :cond_4

    sput-object v3, Lcom/estrongs/android/pop/b;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/b;->a:Z

    sput-object v3, Lcom/estrongs/android/pop/b;->c:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    :try_start_4
    sput-object v3, Lcom/estrongs/android/pop/b;->c:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_9
    throw v0

    :cond_a
    sput-boolean v0, Lcom/estrongs/android/pop/b;->a:Z

    sput-object v3, Lcom/estrongs/android/pop/b;->c:Ljava/lang/String;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3
.end method
