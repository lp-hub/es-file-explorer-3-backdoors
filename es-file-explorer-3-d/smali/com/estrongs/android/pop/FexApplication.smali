.class public Lcom/estrongs/android/pop/FexApplication;
.super Landroid/app/Application;


# static fields
.field public static a:Lcom/estrongs/android/pop/FexApplication;

.field public static b:Z


# instance fields
.field private c:Z

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/FexApplication;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/pop/FexApplication;->d:J

    return-void
.end method

.method public static a()Lcom/estrongs/android/pop/FexApplication;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    return-object v0
.end method

.method public static e()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "Market"

    const-string v2, "Market"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    :cond_1
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/estrongs/android/util/aj;

    invoke-direct {v2, v0}, Lcom/estrongs/android/util/aj;-><init>(Ljava/lang/Object;)V

    const-string v0, "isUserAMonkey"

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/aj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private f()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/m;->a()V

    sget-boolean v0, Lcom/estrongs/android/pop/m;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/FexApplication;->b:Z

    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/i;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/estrongs/android/pop/a;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ax;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/w;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Lcom/estrongs/fs/impl/i/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_3
    return-void

    :cond_2
    const-string v2, "files"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/android/pop/FexApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/i;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_2
    sget-object v0, Lcom/estrongs/android/pop/a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ax;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/pop/a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/w;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/estrongs/android/pop/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v2, v0}, Lcom/estrongs/fs/impl/i/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/estrongs/android/pop/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v2, v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->setPath(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/estrongs/android/pop/a;->d:Ljava/lang/String;

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/estrongs/android/pop/a;->d:Ljava/lang/String;

    goto :goto_5

    :cond_7
    sget-object v0, Lcom/estrongs/android/pop/a;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :cond_8
    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/a;->d:Ljava/lang/String;

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/estrongs/android/pop/a;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->c:Z

    return v0
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->c:Z

    iget-wide v0, p0, Lcom/estrongs/android/pop/FexApplication;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/pop/FexApplication;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/c;-><init>(Lcom/estrongs/android/pop/FexApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/FexApplication;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/FexApplication;->d:J

    return-void
.end method

.method public declared-synchronized getResources()Landroid/content/res/Resources;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/i;->a(Landroid/content/res/Resources;)Lcom/estrongs/android/pop/esclasses/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 3

    sput-object p0, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    invoke-direct {p0}, Lcom/estrongs/android/pop/FexApplication;->f()V

    invoke-static {}, Lcom/estrongs/android/pop/b;->c()V

    invoke-static {p0}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/estrongs/android/d/d;->a(Landroid/content/Context;)Lcom/estrongs/android/d/d;

    new-instance v0, Lcom/estrongs/fs/impl/g/b;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/g/b;-><init>()V

    const-string v1, "http"

    invoke-static {v1, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/j;)V

    const-string v1, "https"

    invoke-static {v1, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/j;)V

    new-instance v0, Lcom/estrongs/fs/impl/f/a;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/f/a;-><init>()V

    new-instance v1, Lcom/estrongs/fs/impl/f/c;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/fs/impl/f/c;-><init>(Landroid/content/ContentResolver;)V

    const-string v2, "local"

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/fs/impl/f/a;->a(Ljava/lang/String;Lcom/estrongs/fs/impl/f/a;)V

    const-string v1, "gallery"

    invoke-static {v1, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/j;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/FexApplication;->g()V

    invoke-static {}, Lcom/estrongs/android/ui/notification/c;->b()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/baidu/share/message/token/TokenShareManager;->getInstance()Lcom/baidu/share/message/token/TokenShareManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/share/message/token/TokenShareManager;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
