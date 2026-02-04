.class public Lcom/estrongs/fs/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/j;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/estrongs/fs/d;

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/old/fs/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/fs/d;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/fs/d;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/fs/d;->e:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    iput-object p1, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/estrongs/fs/d;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/fs/d;
    .locals 2

    sget-object v0, Lcom/estrongs/fs/d;->c:Lcom/estrongs/fs/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/d;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/fs/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/fs/d;->c:Lcom/estrongs/fs/d;

    :cond_0
    sget-object v0, Lcom/estrongs/fs/d;->c:Lcom/estrongs/fs/d;

    return-object v0
.end method

.method private a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_OPERATION_NOT_SUPPORT:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    const v1, 0x7f0b02f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/estrongs/fs/g;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/local/d;->a(Ljava/lang/String;Lcom/estrongs/fs/g;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :sswitch_1
    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;Lcom/estrongs/fs/g;)V

    goto :goto_0

    :sswitch_2
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/estrongs/old/fs/a;->a(Ljava/lang/String;Lcom/estrongs/fs/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_2
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
    .end sparse-switch
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/estrongs/fs/j;)V
    .locals 2

    const-class v1, Lcom/estrongs/fs/d;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/estrongs/fs/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Lcom/estrongs/fs/h;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/h;",
            "ZZ)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/estrongs/fs/m;

    invoke-direct {v1, p2}, Lcom/estrongs/fs/m;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/a/b/l;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;ZZLcom/estrongs/fs/h;Lcom/estrongs/a/b/l;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    new-instance v0, Lcom/estrongs/android/view/ae;

    const v2, 0x7fffffff

    invoke-direct {v0, p2, v2}, Lcom/estrongs/android/view/ae;-><init>(Ljava/lang/String;I)V

    move-object v7, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/estrongs/fs/g;

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    if-eqz v9, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {v6}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v9, v0, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v7, v6}, Lcom/estrongs/android/view/ae;->a(Lcom/estrongs/fs/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p5, :cond_5

    invoke-interface {v6}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_5
    invoke-interface {v6}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p4, :cond_6

    :try_start_0
    invoke-interface {v6}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/d;->a(Ljava/util/List;Ljava/lang/String;Lcom/estrongs/fs/h;ZZ)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    if-eqz p3, :cond_8

    invoke-interface {p3, v6}, Lcom/estrongs/fs/h;->a(Lcom/estrongs/fs/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_8
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/StackOverflowError;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    move-object v7, v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/o/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->H(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/estrongs/old/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->an(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/i/b;->g(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/q/b;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Lcom/estrongs/fs/g;ZZLcom/estrongs/fs/h;Lcom/estrongs/a/b/l;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/g;",
            "ZZ",
            "Lcom/estrongs/fs/h;",
            "Lcom/estrongs/a/b/l",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "net://"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "@baidu"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    const-string v2, "baidu-up-to-pcs"

    invoke-direct {v1, v2}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    if-nez p4, :cond_23

    sget-object v4, Lcom/estrongs/fs/h;->d:Lcom/estrongs/fs/h;

    :goto_1
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/estrongs/fs/a/b;->e(Ljava/lang/String;)Lcom/estrongs/fs/a/d;

    move-result-object v1

    const-string v2, "cacheStatus"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/TypedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_6

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/a/b;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, v1, Lcom/estrongs/fs/a/d;->a:Z

    if-eqz v2, :cond_5

    const-string v2, "cacheStatus"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string v2, "get_data_from_cache"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/estrongs/fs/a/d;->a()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string v2, "cacheStatus"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const-string v1, "get_data_from_cache"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/estrongs/fs/impl/l/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz p3, :cond_7

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_7
    invoke-static {v3}, Lcom/estrongs/android/util/ak;->aN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/estrongs/fs/impl/c/a;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "page"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v5, v6}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;J)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_9

    const-string v1, "offset"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v5, v6}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;J)I

    move-result v1

    if-lez v1, :cond_c

    :cond_9
    const/4 v1, 0x1

    move v2, v1

    :goto_3
    move-object/from16 v0, p6

    invoke-static {v3, v0}, Lcom/estrongs/android/util/ak;->b(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Z

    move-result v7

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v5

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    invoke-static {v3}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/j;

    move-result-object v1

    if-eqz v1, :cond_1f

    instance-of v6, v1, Lcom/estrongs/fs/impl/f/a;

    if-eqz v6, :cond_1b

    check-cast v1, Lcom/estrongs/fs/impl/f/a;

    move-object/from16 v0, p6

    invoke-virtual {v1, p1, v0}, Lcom/estrongs/fs/impl/f/a;->a(Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v1

    :goto_4
    const-string v4, "app://"

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "book://"

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "apk://"

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "storage://"

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_5
    if-eqz p3, :cond_b

    if-eqz v1, :cond_b

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    if-nez v7, :cond_b

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v2}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_b
    const-string v2, "offset"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/TypedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/a/b;->e(Ljava/lang/String;)Lcom/estrongs/fs/a/d;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "loadFinished"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/estrongs/fs/a/d;->a:Z

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_3

    :pswitch_1
    move-object/from16 v0, p5

    invoke-static {v3, v4, v0}, Lcom/estrongs/fs/impl/local/d;->a(Ljava/lang/String;Lcom/estrongs/fs/h;Lcom/estrongs/a/b/l;)Ljava/util/List;

    move-result-object v1

    goto :goto_5

    :pswitch_2
    if-eqz v5, :cond_d

    const-string v1, "SMB_List"

    const-string v6, "SMB_List"

    invoke-virtual {v5, v1, v6}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, p5

    invoke-static {v3, v4, v0}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;Lcom/estrongs/fs/h;Lcom/estrongs/a/b/l;)Ljava/util/List;

    move-result-object v1

    goto :goto_5

    :pswitch_3
    if-eqz v5, :cond_e

    const-string v1, "WEBDAV_List"

    const-string v6, "WEBDAV_List"

    invoke-virtual {v5, v1, v6}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p5

    invoke-static {v3, v4, v0}, Lcom/estrongs/fs/impl/q/b;->a(Ljava/lang/String;Lcom/estrongs/fs/h;Lcom/estrongs/a/b/l;)Ljava/util/List;

    move-result-object v1

    goto :goto_5

    :pswitch_4
    const/4 v1, 0x0

    const/4 v8, 0x2

    if-ne v6, v8, :cond_11

    const-string v1, "FTP_List"

    :cond_f
    :goto_6
    if-eqz v5, :cond_10

    if-eqz v1, :cond_10

    invoke-virtual {v5, v1, v1}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-static {v3}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v1

    if-nez v1, :cond_13

    new-instance v1, Lcom/estrongs/fs/FsProviderNotFoundException;

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/a/a;->a(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/fs/FsProviderNotFoundException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_11
    const/4 v8, 0x5

    if-ne v6, v8, :cond_12

    const-string v1, "SFTP_List"

    goto :goto_6

    :cond_12
    const/16 v8, 0x13

    if-ne v6, v8, :cond_f

    const-string v1, "FTPS_List"

    goto :goto_6

    :cond_13
    new-instance v5, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v5}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    const-string v6, "server"

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/estrongs/android/pop/q;->g(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->H(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v8

    invoke-static {v8}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/estrongs/android/pop/q;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v8

    invoke-static {v8}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/estrongs/android/pop/q;->f(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "mode"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string v8, "encode"

    invoke-static {v6}, Lcom/estrongs/android/util/g;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v5}, Lcom/estrongs/old/fs/a;->a(Lcom/estrongs/android/util/TypedMap;)V

    invoke-interface {v1, v3, v4}, Lcom/estrongs/old/fs/a;->a(Ljava/lang/String;Lcom/estrongs/fs/h;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_5
    invoke-static {}, Lcom/estrongs/fs/impl/h/b;->b()Lcom/estrongs/fs/impl/h/b;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/estrongs/fs/impl/h/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/fs/h;Lcom/estrongs/a/b/l;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_6
    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/estrongs/fs/impl/j/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/fs/h;Lcom/estrongs/a/b/l;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/estrongs/fs/impl/p/b;->b()Lcom/estrongs/fs/impl/p/b;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/estrongs/fs/impl/p/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/fs/h;Lcom/estrongs/a/b/l;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_8
    if-eqz v5, :cond_15

    const-string v1, "Bluetooth_List"

    const-string v6, "Bluetooth_List"

    invoke-virtual {v5, v1, v6}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    move-object/from16 v0, p5

    invoke-static {v3, v4, v0}, Lcom/estrongs/fs/impl/c/a;->a(Ljava/lang/String;Lcom/estrongs/fs/h;Lcom/estrongs/a/b/l;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_9
    :try_start_0
    iget-object v1, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p6

    invoke-static {v1, v5, v6, v4, v0}, Lcom/estrongs/fs/impl/i/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v4, :cond_19

    const-string v1, "PCS_DRIVE_Js1a7M5e_9yAcTvFX/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/g;

    check-cast v1, Lcom/estrongs/fs/impl/i/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/i/a;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v10, v1, Lcom/estrongs/fs/impl/i/a;->absolutePath:Ljava/lang/String;

    const-string v11, "/>"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v11, v1, Lcom/estrongs/fs/impl/i/a;->absolutePath:Ljava/lang/String;

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_16
    if-eqz v8, :cond_17

    const-string v10, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    const-string v11, "PCS_DRIVE_Js1a7M5e_9yAcTvFX/files"

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_17

    const-string v10, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    const-string v11, "PCS_DRIVE_Js1a7M5e_9yAcTvFX/files"

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    :cond_17
    invoke-virtual {v1, v5}, Lcom/estrongs/fs/impl/i/a;->a(Ljava/lang/String;)V

    if-nez v6, :cond_18

    :goto_8
    invoke-virtual {v1, v5}, Lcom/estrongs/fs/impl/i/a;->b(Ljava/lang/String;)V

    const-string v5, "user_info"

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v6

    invoke-virtual {v6}, Lcom/estrongs/android/ui/pcs/aw;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/estrongs/fs/impl/i/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_7

    :catch_0
    move-exception v1

    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    iget-object v3, v1, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v3}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_18
    move-object v5, v6

    goto :goto_8

    :cond_19
    :try_start_1
    const-string v1, "@pcs/files/apps/Downloads/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "pcs"

    invoke-static {v1}, Lcom/estrongs/fs/impl/i/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->aa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v1, v5, v6, v0}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v1

    const-string v5, "PCSD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fos before downlist: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_21

    if-nez v4, :cond_1a

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :cond_1a
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v1, v4

    :goto_9
    const-string v4, "PCSD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fos after downlist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v1

    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :pswitch_a
    :try_start_2
    iget-object v1, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-static {v1, v3, p2, v4, v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->listFiles(Landroid/content/Context;Ljava/lang/String;ZLcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    :try_end_2
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto/16 :goto_5

    :catch_2
    move-exception v1

    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    iget-object v3, v1, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v3}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :pswitch_b
    move-object/from16 v0, p5

    invoke-static {v3, v4, v0}, Lcom/estrongs/fs/impl/k/a;->a(Ljava/lang/String;Lcom/estrongs/fs/h;Lcom/estrongs/a/b/l;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_5

    :cond_1b
    instance-of v6, v1, Lcom/estrongs/fs/impl/n/a;

    if-eqz v6, :cond_1e

    if-eqz p6, :cond_1c

    sget-object v6, Lcom/estrongs/android/util/TypedMap;->EMPTY:Lcom/estrongs/android/util/TypedMap;

    move-object/from16 v0, p6

    if-ne v0, v6, :cond_1d

    :cond_1c
    new-instance p6, Lcom/estrongs/android/util/TypedMap;

    invoke-direct/range {p6 .. p6}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    :cond_1d
    const-string v6, "refresh"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v8}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p6

    invoke-interface {v1, p1, v4, v0}, Lcom/estrongs/fs/j;->a(Lcom/estrongs/fs/g;Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_4

    :cond_1e
    move-object/from16 v0, p6

    invoke-interface {v1, p1, v4, v0}, Lcom/estrongs/fs/j;->a(Lcom/estrongs/fs/g;Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_4

    :cond_1f
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not result in the file system for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/estrongs/fs/a/d;->a:Z

    goto/16 :goto_0

    :cond_21
    move-object v1, v4

    goto/16 :goto_9

    :cond_22
    move-object v1, v4

    goto/16 :goto_5

    :cond_23
    move-object/from16 v4, p4

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private b(Lcom/estrongs/fs/g;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/j;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/estrongs/fs/impl/f/a;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/estrongs/fs/impl/f/a;

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/fs/impl/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/estrongs/a/b/p;->b:Lcom/estrongs/a/b/p;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/estrongs/fs/impl/local/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/p;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/estrongs/fs/impl/o/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/p;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/estrongs/fs/impl/q/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/p;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Lcom/estrongs/old/fs/a;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    :pswitch_5
    iget-object v1, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/estrongs/fs/impl/c/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/p;)Z

    move-result v0

    goto :goto_0

    :pswitch_6
    :try_start_0
    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/fs/impl/i/b;->a(Ljava/lang/String;J)Z
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_7
    const-wide/16 v1, 0x0

    :try_start_1
    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->deleteFile(Ljava/lang/String;J)Z
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m(Ljava/lang/String;)Lcom/estrongs/fs/g;
    .locals 1

    const-string v0, "apk://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "book://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pic://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "music://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/estrongs/fs/f;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/f;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/estrongs/fs/m;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/m;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;
    .locals 3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/a;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/FsProviderNotFoundException;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/fs/FsProviderNotFoundException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    sget-object v0, Lcom/estrongs/fs/d;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/old/fs/a;

    if-nez v0, :cond_2

    :try_start_0
    const-string v2, "ftp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ftps"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ftpes"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-static {}, Lcom/estrongs/old/fs/impl/a/c;->a()Lcom/estrongs/old/fs/a;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const-string v2, "sftp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a()Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/estrongs/fs/FsProviderNotFoundException;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/fs/FsProviderNotFoundException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private p(Ljava/lang/String;)Lcom/estrongs/fs/j;
    .locals 4

    const/4 v1, 0x0

    const-string v0, "app://"

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/fs/impl/b/d;

    iget-object v1, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/b/d;-><init>(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/estrongs/fs/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    const-string v0, "getInstance"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/j;

    :goto_2
    if-nez v0, :cond_0

    const-class v0, Lcom/estrongs/fs/j;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/j;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;ZZ)Lcom/estrongs/fs/g;
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/a/b;->g(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :cond_3
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v5

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-ne v2, v6, :cond_9

    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-array v0, v3, [Lcom/estrongs/fs/g;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/fs/e;

    invoke-direct {v2, p0, v0, p1}, Lcom/estrongs/fs/e;-><init>(Lcom/estrongs/fs/d;[Lcom/estrongs/fs/g;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    aget-object v1, v0, v4

    goto :goto_0

    :catch_0
    move-exception v2

    move v2, v4

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/n;

    invoke-direct {v1, p1}, Lcom/estrongs/fs/n;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    packed-switch v5, :pswitch_data_0

    :goto_2
    :pswitch_0
    if-eqz v0, :cond_7

    move-object v1, v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/estrongs/fs/impl/local/d;->b(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/b;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    invoke-static {p1}, Lcom/estrongs/fs/impl/o/b;->i(Ljava/lang/String;)Lcom/estrongs/fs/impl/o/a;

    move-result-object v0

    goto :goto_2

    :pswitch_3
    invoke-static {p1}, Lcom/estrongs/fs/impl/q/b;->f(Ljava/lang/String;)Lcom/estrongs/fs/impl/q/a;

    move-result-object v0

    goto :goto_2

    :pswitch_4
    :try_start_2
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/estrongs/old/fs/a;->h(Ljava/lang/String;)Lcom/estrongs/fs/g;
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    goto :goto_2

    :pswitch_5
    invoke-static {p1}, Lcom/estrongs/fs/impl/c/a;->i(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    goto :goto_2

    :pswitch_6
    :try_start_3
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_6

    :goto_3
    invoke-static {v2, v3}, Lcom/estrongs/fs/impl/i/b;->d(Ljava/lang/String;Z)Lcom/estrongs/fs/impl/i/a;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Lcom/estrongs/fs/impl/i/a;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/estrongs/fs/impl/i/a;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_5
    move-object v0, v2

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_3

    :pswitch_7
    :try_start_4
    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileObject(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/j;

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_5
    invoke-interface {v0, p1}, Lcom/estrongs/fs/j;->a(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/estrongs/fs/n;

    invoke-direct {v1, p1}, Lcom/estrongs/fs/n;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/n;

    invoke-direct {v1, p1}, Lcom/estrongs/fs/n;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    if-eqz p2, :cond_0

    new-instance v1, Lcom/estrongs/fs/n;

    invoke-direct {v1, p1}, Lcom/estrongs/fs/n;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_2

    :cond_9
    move v2, v4

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public a(Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/j;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/estrongs/fs/impl/g/b;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/estrongs/fs/impl/g/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/estrongs/fs/impl/g/b;->a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/estrongs/fs/impl/local/d;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2, p3}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1, p2, p3}, Lcom/estrongs/fs/impl/q/b;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/old/fs/a;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    :pswitch_5
    invoke-static {p1}, Lcom/estrongs/fs/impl/c/a;->g(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/estrongs/fs/impl/i/b;->c(Ljava/lang/String;J)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_7
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileInputStream(Ljava/lang/String;J)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    invoke-interface {v0, p1}, Lcom/estrongs/fs/j;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/estrongs/fs/FileSystemException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not result in the file system for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public a(Ljava/lang/String;JZ)Ljava/io/OutputStream;
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/d;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    new-instance v3, Lcom/estrongs/a/q;

    const-string v4, "\u4e0d\u652f\u6301\u65ad\u70b9\u4e0a\u4f20"

    invoke-direct {v3, v4, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/estrongs/fs/impl/local/d;->a(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2, p3}, Lcom/estrongs/fs/impl/o/b;->b(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/q;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/estrongs/fs/g;ZLcom/estrongs/fs/h;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/g;",
            "Z",
            "Lcom/estrongs/fs/h;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/estrongs/android/util/TypedMap;->EMPTY:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;ZLcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/estrongs/fs/g;ZLcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/g;",
            "Z",
            "Lcom/estrongs/fs/h;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    sget-object v5, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/a/b/l;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;ZZLcom/estrongs/fs/h;Lcom/estrongs/a/b/l;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/estrongs/fs/g;ZZLcom/estrongs/fs/h;Lcom/estrongs/a/b/l;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/g;",
            "ZZ",
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

    sget-object v6, Lcom/estrongs/android/util/TypedMap;->EMPTY:Lcom/estrongs/android/util/TypedMap;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;ZZLcom/estrongs/fs/h;Lcom/estrongs/a/b/l;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/estrongs/fs/g;ZZLcom/estrongs/fs/h;Lcom/estrongs/a/b/l;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/g;",
            "ZZ",
            "Lcom/estrongs/fs/h;",
            "Lcom/estrongs/a/b/l",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v7, 0x0

    instance-of v0, p4, Lcom/estrongs/fs/b;

    if-eqz v0, :cond_2

    move-object v0, p4

    check-cast v0, Lcom/estrongs/fs/b;

    const-class v1, Lcom/estrongs/android/view/ae;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    move v1, v7

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/ae;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ae;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_1
    return-object v4

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/fs/d;->b(Lcom/estrongs/fs/g;ZZLcom/estrongs/fs/h;Lcom/estrongs/a/b/l;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p4, :cond_3

    move-object v4, v1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {p4, v0}, Lcom/estrongs/fs/h;->a(Lcom/estrongs/fs/g;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    move-object v4, v8

    goto :goto_1
.end method

.method public a(Lcom/estrongs/fs/g;ZZLcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/g;",
            "ZZ",
            "Lcom/estrongs/fs/h;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    sget-object v5, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/a/b/l;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;ZZLcom/estrongs/fs/h;Lcom/estrongs/a/b/l;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/b/l;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/estrongs/android/pop/app/b/i;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v3, Lcom/estrongs/android/pop/app/b/j;

    invoke-direct {v3, v0, v5, v5}, Lcom/estrongs/android/pop/app/b/j;-><init>(Ljava/util/Map;ZZ)V

    :cond_0
    :try_start_0
    const-string v2, "recursion"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->p()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v5, 0x1

    :cond_1
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/d;->a(Ljava/util/List;Ljava/lang/String;Lcom/estrongs/fs/h;ZZ)V

    return-object v1

    :catch_0
    move-exception v0

    move v4, v5

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/fs/m;

    invoke-direct {v0, p1}, Lcom/estrongs/fs/m;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/estrongs/fs/h;->d:Lcom/estrongs/fs/h;

    invoke-virtual {p0, v0, p2, v1}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;ZLcom/estrongs/fs/h;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/estrongs/fs/b/k;)Z
    .locals 30

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/estrongs/fs/b/k;->b:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v4

    if-eqz v4, :cond_6

    instance-of v3, v4, Lcom/estrongs/fs/b/i;

    if-eqz v3, :cond_6

    move-object v3, v4

    check-cast v3, Lcom/estrongs/fs/b/i;

    invoke-virtual {v3}, Lcom/estrongs/fs/b/i;->b()[B

    move-result-object v3

    move-object v6, v3

    :goto_0
    invoke-static {v9}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v3

    instance-of v3, v3, Lcom/estrongs/fs/b/i;

    if-eqz v3, :cond_0

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/i;

    iget-object v8, v3, Lcom/estrongs/fs/b/i;->t:Ljava/util/Set;

    const-string v3, "/"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v7}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {v5}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v10

    invoke-static {v9}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v11

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    if-ne v10, v11, :cond_81

    const/4 v11, 0x4

    if-eq v10, v11, :cond_1

    const/16 v11, 0x17

    if-ne v10, v11, :cond_81

    :cond_1
    invoke-static {v5}, Lcom/estrongs/android/util/ak;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Lcom/estrongs/android/util/ak;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "kanbox"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_80

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_80

    const/4 v7, 0x1

    move/from16 v19, v3

    move/from16 v20, v7

    move-object/from16 v21, v8

    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    const/16 v16, 0x1

    const/4 v15, 0x0

    move v8, v15

    move/from16 v9, v16

    move v7, v3

    move-object v3, v5

    :goto_3
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v10, 0x1

    if-gt v5, v10, :cond_2

    if-eqz v7, :cond_70

    :cond_2
    if-nez v7, :cond_4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-virtual {v4, v5, v10}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-eqz v3, :cond_c

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_5
    move v3, v5

    :goto_4
    return v3

    :cond_6
    const/high16 v3, 0x20000

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v5}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->aJ(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/estrongs/fs/b/k;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->aJ(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_7
    const/16 v3, 0x1400

    :cond_8
    :goto_5
    new-array v3, v3, [B

    move-object v6, v3

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v5}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->an(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/estrongs/fs/b/k;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->an(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v5}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/estrongs/fs/b/k;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_a
    const v3, 0x8000

    goto :goto_5

    :cond_b
    move-object v3, v5

    goto/16 :goto_1

    :cond_c
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    iget-object v5, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v5}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    iget-object v10, v3, Lcom/estrongs/fs/b/k;->b:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-eqz v4, :cond_7f

    const/4 v5, 0x2

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v3, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v10, v11

    const/4 v3, 0x1

    aput-object v18, v10, v3

    invoke-virtual {v4, v5, v10}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/16 v3, 0x8

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    move-object/from16 v3, v18

    goto/16 :goto_3

    :cond_d
    const/4 v5, 0x0

    if-nez v9, :cond_e

    if-eqz v19, :cond_7e

    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    if-eqz v7, :cond_7d

    const/4 v9, 0x0

    move v11, v5

    :goto_6
    const/16 v17, 0x0

    if-eqz v9, :cond_17

    if-eqz v11, :cond_17

    const/4 v7, 0x1

    if-eqz v4, :cond_13

    iget-boolean v5, v3, Lcom/estrongs/fs/b/k;->e:Z

    if-nez v5, :cond_13

    const-class v12, Lcom/estrongs/a/a/e;

    const/4 v5, 0x4

    new-array v13, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v13, v5

    const/4 v14, 0x1

    iget-wide v15, v3, Lcom/estrongs/fs/b/k;->c:J

    const-wide/16 v23, 0x0

    cmp-long v5, v15, v23

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    :goto_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v13, v14

    const/4 v5, 0x2

    iget-object v14, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    aput-object v14, v13, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-virtual {v4, v12, v13}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/c;

    move-result-object v5

    check-cast v5, Lcom/estrongs/a/a/e;

    if-eqz v5, :cond_7c

    const/4 v7, 0x0

    iget-boolean v8, v5, Lcom/estrongs/a/a/e;->f:Z

    if-eqz v8, :cond_7b

    iget v8, v5, Lcom/estrongs/a/a/e;->g:I

    const/4 v12, 0x1

    if-ne v8, v12, :cond_7b

    const/4 v9, 0x0

    move v8, v9

    :goto_8
    iget v9, v5, Lcom/estrongs/a/a/e;->g:I

    const/4 v12, 0x5

    if-ne v9, v12, :cond_f

    const/4 v7, 0x1

    :cond_f
    iget v5, v5, Lcom/estrongs/a/a/e;->g:I

    :goto_9
    move v9, v8

    move v8, v7

    move v7, v5

    :cond_10
    :goto_a
    const/4 v5, 0x2

    if-ne v7, v5, :cond_14

    if-eqz v4, :cond_7a

    const/4 v5, 0x2

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v3, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v10

    const/4 v3, 0x1

    aput-object v18, v7, v3

    invoke-virtual {v4, v5, v7}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/16 v3, 0x8

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    instance-of v3, v4, Lcom/estrongs/fs/b/y;

    if-eqz v3, :cond_7a

    move-object v0, v4

    check-cast v0, Lcom/estrongs/fs/b/y;

    move-object v3, v0

    iget-object v3, v3, Lcom/estrongs/fs/b/y;->C:Ljava/util/List;

    if-nez v3, :cond_11

    move-object v0, v4

    check-cast v0, Lcom/estrongs/fs/b/y;

    move-object v3, v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/estrongs/fs/b/y;->C:Ljava/util/List;

    :cond_11
    move-object v0, v4

    check-cast v0, Lcom/estrongs/fs/b/y;

    move-object v3, v0

    iget-object v3, v3, Lcom/estrongs/fs/b/y;->C:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v7, v17

    move-object/from16 v3, v18

    goto/16 :goto_3

    :cond_12
    const/4 v5, 0x0

    goto :goto_7

    :cond_13
    if-nez v19, :cond_10

    const/4 v9, 0x0

    goto :goto_a

    :cond_14
    const/4 v5, 0x3

    if-ne v7, v5, :cond_17

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v3

    iget v3, v3, Lcom/estrongs/a/p;->a:I

    if-nez v3, :cond_15

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_15
    const/4 v5, 0x0

    if-eqz v4, :cond_16

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_16

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_16
    move v3, v5

    goto/16 :goto_4

    :cond_17
    move v15, v8

    move/from16 v16, v9

    if-eqz v20, :cond_1f

    if-eqz v11, :cond_18

    if-eqz v11, :cond_1f

    if-nez v19, :cond_1f

    :cond_18
    :try_start_2
    invoke-static/range {v18 .. v18}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/estrongs/fs/impl/i/b;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "ubuntu"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    new-instance v5, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    const v7, 0x7f0b02f8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_b
    if-eqz v4, :cond_19

    const/16 v6, 0x2710

    invoke-virtual {v4, v6, v5}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_2
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_19
    const/4 v5, 0x0

    if-eqz v4, :cond_1a

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1a

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_1a
    move v3, v5

    goto/16 :goto_4

    :cond_1b
    :try_start_3
    new-instance v5, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    const v7, 0x7f0b0208

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v9}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_b

    :catch_0
    move-exception v5

    :try_start_4
    iget-object v6, v5, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1e

    new-instance v3, Lcom/estrongs/a/q;

    invoke-direct {v3, v6, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_c
    const/16 v5, 0x2710

    invoke-virtual {v4, v5, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_4
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v5, 0x0

    if-eqz v4, :cond_1c

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1c

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_1c
    move v3, v5

    goto/16 :goto_4

    :cond_1d
    move v8, v15

    move/from16 v9, v16

    move/from16 v7, v17

    move-object/from16 v3, v18

    goto/16 :goto_3

    :cond_1e
    :try_start_5
    new-instance v6, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    const v8, 0x7f0b0208

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v3, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v3, v6

    goto :goto_c

    :cond_1f
    iget-object v5, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v5}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/fs/l;->a()Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v3, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;)Ljava/util/List;
    :try_end_5
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v9

    if-nez v9, :cond_21

    const/4 v5, 0x0

    if-eqz v4, :cond_20

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_20

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_20
    move v3, v5

    goto/16 :goto_4

    :cond_21
    const/4 v3, 0x0

    :try_start_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lcom/estrongs/fs/d;->c(Ljava/lang/String;Z)Z
    :try_end_6
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v3

    if-nez v3, :cond_24

    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/estrongs/fs/d;->c(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v3

    iget-boolean v3, v3, Lcom/estrongs/fs/c;->d:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v3, :cond_24

    const/4 v5, 0x0

    if-eqz v4, :cond_22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_22

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_22
    move v3, v5

    goto/16 :goto_4

    :catch_1
    move-exception v3

    const/4 v5, 0x0

    if-eqz v4, :cond_23

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_23
    move v3, v5

    goto/16 :goto_4

    :cond_24
    :try_start_8
    const-string v3, "/"

    invoke-virtual {v10, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_79

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    :goto_d
    const/4 v3, 0x0

    move v8, v3

    :goto_e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ge v8, v3, :cond_25

    new-instance v10, Lcom/estrongs/fs/b/k;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/g;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/estrongs/fs/g;

    invoke-interface {v5}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v11, 0x0

    invoke-direct {v10, v3, v5, v11, v12}, Lcom/estrongs/fs/b/k;-><init>(Lcom/estrongs/fs/g;Ljava/lang/String;J)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_e

    :cond_25
    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v3

    instance-of v3, v3, Lcom/estrongs/fs/b/i;

    if-eqz v3, :cond_27

    invoke-static {v7}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/i;

    iget-object v3, v3, Lcom/estrongs/fs/b/i;->t:Ljava/util/Set;

    const-string v5, "/"

    invoke-virtual {v7, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_26
    invoke-static {v7}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_27
    :goto_f
    move v8, v15

    move/from16 v9, v16

    move/from16 v7, v17

    move-object/from16 v3, v18

    goto/16 :goto_3

    :cond_28
    if-eqz v20, :cond_2c

    if-eqz v11, :cond_2c

    if-eqz v19, :cond_2c

    invoke-static {v10}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v7, 0x0

    invoke-static {v5, v7, v8}, Lcom/estrongs/fs/impl/i/b;->a(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-static/range {v18 .. v18}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/estrongs/fs/impl/i/b;->f(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v5

    :cond_29
    if-nez v5, :cond_2b

    const/4 v5, 0x0

    if-eqz v4, :cond_2a

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2a

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_2a
    move v3, v5

    goto/16 :goto_4

    :cond_2b
    if-eqz v4, :cond_77

    const/4 v5, 0x2

    const/4 v7, 0x2

    :try_start_9
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v3, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v18, v7, v3

    invoke-virtual {v4, v5, v7}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    move v8, v15

    move/from16 v9, v16

    move/from16 v7, v17

    move-object/from16 v3, v18

    goto/16 :goto_3

    :cond_2c
    iget-object v5, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v5}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v7

    const-wide/16 v11, 0x0

    cmp-long v5, v7, v11

    if-gtz v5, :cond_78

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->d(Ljava/lang/String;)J

    move-result-wide v7

    move-wide v13, v7

    :goto_10
    if-eqz v15, :cond_2d

    invoke-static {v10}, Lcom/estrongs/fs/c/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v4, :cond_2d

    const/16 v5, 0xc

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v9}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v10, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_2d
    move-object v12, v10

    if-eqz v4, :cond_2e

    const/4 v5, 0x2

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v18, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_2e
    move-object/from16 v0, v18

    invoke-static {v0, v12, v13, v14}, Lcom/estrongs/fs/impl/i/b;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_2f

    if-eqz v4, :cond_77

    const/4 v5, 0x2

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v3, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v18, v7, v3

    invoke-virtual {v4, v5, v7}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/16 v3, 0x9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {v4, v3, v5}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/16 v3, 0xd

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v18, v5, v7

    const/4 v7, 0x1

    aput-object v12, v5, v7

    invoke-virtual {v4, v3, v5}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    move v8, v15

    move/from16 v9, v16

    move/from16 v7, v17

    move-object/from16 v3, v18

    goto/16 :goto_3

    :cond_2f
    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-wide v9, v3, Lcom/estrongs/fs/b/k;->c:J

    const-wide/16 v23, 0x0

    cmp-long v5, v9, v23

    if-lez v5, :cond_32

    invoke-static {v12}, Lcom/estrongs/fs/d;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    const/4 v5, 0x1

    move v11, v5

    :goto_11
    if-eqz v11, :cond_30

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/estrongs/fs/d;->d(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/estrongs/fs/b/k;->c:J

    :cond_30
    if-eqz v11, :cond_33

    iget-wide v9, v3, Lcom/estrongs/fs/b/k;->c:J

    const-wide/16 v23, 0x0

    cmp-long v5, v9, v23

    if-lez v5, :cond_33

    if-eqz v4, :cond_31

    const/4 v5, 0x2

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-wide v0, v3, Lcom/estrongs/fs/b/k;->c:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v9, v10

    const/4 v10, 0x1

    aput-object v18, v9, v10

    const/4 v10, 0x2

    const-string v23, "RBT"

    aput-object v23, v9, v10

    invoke-virtual {v4, v5, v9}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_31
    :goto_12
    if-eqz v11, :cond_36

    iget-wide v9, v3, Lcom/estrongs/fs/b/k;->c:J

    cmp-long v5, v9, v13

    if-nez v5, :cond_36

    const-wide/16 v9, 0x0

    cmp-long v5, v13, v9

    if-eqz v5, :cond_36

    move v8, v15

    move/from16 v9, v16

    move/from16 v7, v17

    move-object/from16 v3, v18

    goto/16 :goto_3

    :cond_32
    const/4 v5, 0x0

    move v11, v5

    goto :goto_11

    :cond_33
    const-wide/16 v9, 0x0

    iput-wide v9, v3, Lcom/estrongs/fs/b/k;->c:J
    :try_end_9
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_12

    :catch_2
    move-exception v3

    :try_start_a
    invoke-virtual {v3}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_74

    new-instance v5, Lcom/estrongs/a/q;

    invoke-direct {v5, v6, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v3, v5

    :goto_13
    if-eqz v4, :cond_34

    const/16 v5, 0x2710

    invoke-virtual {v4, v5, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_34
    if-eqz v4, :cond_35

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_35

    const/4 v3, 0x4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v22, v5, v6

    invoke-virtual {v4, v3, v5}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_35
    :goto_14
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_36
    :try_start_b
    new-instance v23, Lcom/estrongs/android/util/TypedMap;

    invoke-direct/range {v23 .. v23}, Lcom/estrongs/android/util/TypedMap;-><init>()V
    :try_end_b
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v11, :cond_3b

    :try_start_c
    iget-wide v9, v3, Lcom/estrongs/fs/b/k;->c:J

    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v9, v10, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;
    :try_end_c
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-object v8

    :cond_37
    :goto_16
    if-eqz v11, :cond_38

    :try_start_d
    iget-wide v9, v3, Lcom/estrongs/fs/b/k;->c:J

    const-wide/16 v24, 0x0

    cmp-long v5, v9, v24

    if-lez v5, :cond_38

    const-string v5, "RBT"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/estrongs/android/util/TypedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    const-string v5, "RBT"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_38

    const-wide/16 v9, 0x0

    iput-wide v9, v3, Lcom/estrongs/fs/b/k;->c:J

    if-eqz v4, :cond_38

    const/4 v5, 0x2

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v9, v10

    const/4 v10, 0x1

    aput-object v18, v9, v10

    invoke-virtual {v4, v5, v9}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_38
    if-nez v8, :cond_3f

    if-eqz v4, :cond_39

    const/4 v5, 0x2

    new-instance v6, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    const v8, 0x7f0b0208

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v3, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v4, v5, v6}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_d
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_39
    const/4 v5, 0x0

    if-eqz v4, :cond_3a

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3a

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_3a
    move v3, v5

    goto/16 :goto_4

    :cond_3b
    const-wide/16 v9, 0x0

    goto/16 :goto_15

    :catch_3
    move-exception v5

    :try_start_e
    invoke-virtual {v5}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_37

    invoke-virtual {v5}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v9, "unauthorized"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_37

    const-class v5, Lcom/estrongs/a/a/b;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v18, v8, v9

    invoke-virtual {v4, v5, v8}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/c;

    move-result-object v5

    check-cast v5, Lcom/estrongs/a/a/b;

    iget-boolean v8, v5, Lcom/estrongs/a/a/b;->d:Z

    if-eqz v8, :cond_3d

    invoke-virtual {v4}, Lcom/estrongs/a/a;->requestStop()V
    :try_end_e
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const/4 v5, 0x0

    if-eqz v4, :cond_3c

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3c

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_3c
    move v3, v5

    goto/16 :goto_4

    :cond_3d
    :try_start_f
    const-string v8, "NEW_USERNAME"

    iget-object v9, v5, Lcom/estrongs/a/a/b;->b:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "NEW_PASSWORD"

    iget-object v5, v5, Lcom/estrongs/a/a/b;->c:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v5}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_3e

    iget-wide v8, v3, Lcom/estrongs/fs/b/k;->c:J

    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;

    move-result-object v8

    goto/16 :goto_16

    :cond_3e
    const-wide/16 v8, 0x0

    goto :goto_17

    :cond_3f
    invoke-static {v12}, Lcom/estrongs/android/util/ak;->an(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_40

    invoke-static {v12}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_40

    invoke-static {v12}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    :cond_40
    const-wide/16 v9, -0x1

    cmp-long v5, v13, v9

    if-eqz v5, :cond_76

    invoke-static {v12}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13, v14}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v7

    move-object v10, v8

    :goto_18
    const-wide/16 v8, -0x1

    cmp-long v5, v13, v8

    if-nez v5, :cond_41

    iget-object v5, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v5}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I
    :try_end_f
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result v5

    const/16 v8, 0x12

    if-ne v5, v8, :cond_42

    :cond_41
    if-eqz v10, :cond_42

    if-nez v7, :cond_51

    :cond_42
    :try_start_10
    iget-wide v5, v3, Lcom/estrongs/fs/b/k;->c:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_43

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v5}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/p;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_43
    :goto_19
    if-eqz v4, :cond_44

    :cond_44
    if-eqz v4, :cond_45

    const/4 v5, 0x1

    :try_start_11
    new-instance v6, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    const v8, 0x7f0b0208

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v3, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v4, v5, v6}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_11
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_45
    const/4 v5, 0x0

    if-eqz v4, :cond_46

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_46

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_46
    move v3, v5

    goto/16 :goto_4

    :cond_47
    :try_start_12
    invoke-static {v12}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    const/4 v5, 0x0

    invoke-static {v12}, Lcom/estrongs/android/util/ak;->aj(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4b

    if-eqz v4, :cond_49

    const-class v5, Lcom/estrongs/a/a/f;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v12, v7, v9

    invoke-virtual {v4, v5, v7}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/c;

    move-result-object v5

    check-cast v5, Lcom/estrongs/a/a/f;

    iget v7, v5, Lcom/estrongs/a/a/f;->g:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_4b

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_12
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    const/4 v5, 0x0

    if-eqz v4, :cond_48

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_48

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_48
    move v3, v5

    goto/16 :goto_4

    :cond_49
    const/4 v5, 0x0

    if-eqz v4, :cond_4a

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4a

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_4a
    move v3, v5

    goto/16 :goto_4

    :cond_4b
    if-nez v5, :cond_4c

    :try_start_13
    sget-object v5, Lcom/estrongs/android/util/TypedMap;->EMPTY:Lcom/estrongs/android/util/TypedMap;

    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v5}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;

    move-result-object v7

    move-object v10, v8

    goto/16 :goto_18

    :cond_4c
    iget-object v5, v5, Lcom/estrongs/a/a/f;->b:Lcom/estrongs/android/util/TypedMap;

    goto :goto_1a

    :cond_4d
    if-eqz v11, :cond_4e

    iget-wide v9, v3, Lcom/estrongs/fs/b/k;->c:J

    const-wide/16 v23, 0x0

    cmp-long v5, v9, v23

    if-nez v5, :cond_50

    :cond_4e
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v7

    :goto_1b
    if-eqz v11, :cond_76

    if-nez v7, :cond_76

    if-eqz v4, :cond_4f

    const/4 v5, 0x2

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    iget-wide v0, v3, Lcom/estrongs/fs/b/k;->c:J

    move-wide/from16 v23, v0

    sub-long v9, v9, v23

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v18, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_4f
    const-wide/16 v7, 0x0

    iput-wide v7, v3, Lcom/estrongs/fs/b/k;->c:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v7

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8, v9}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v5

    move-object v10, v5

    goto/16 :goto_18

    :cond_50
    iget-wide v9, v3, Lcom/estrongs/fs/b/k;->c:J

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9, v10, v5}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;JZ)Ljava/io/OutputStream;

    move-result-object v7

    goto :goto_1b

    :cond_51
    if-eqz v4, :cond_52

    const/16 v5, 0x9

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v8, v9

    const/4 v9, 0x1

    iget-wide v0, v3, Lcom/estrongs/fs/b/k;->c:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v8, v9

    invoke-virtual {v4, v5, v8}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_52
    iget-wide v8, v3, Lcom/estrongs/fs/b/k;->c:J
    :try_end_13
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_53
    :try_start_14
    invoke-virtual {v10, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_5f

    if-eqz v4, :cond_58

    invoke-virtual {v4}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v23

    if-eqz v23, :cond_58

    if-nez v11, :cond_54

    const/4 v5, 0x2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    sub-long v8, v13, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v11

    const/4 v8, 0x1

    aput-object v18, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :cond_54
    if-eqz v7, :cond_75

    :try_start_15
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    const/4 v5, 0x0

    :goto_1c
    const/4 v6, 0x1

    :try_start_16
    invoke-virtual {v4, v6}, Lcom/estrongs/a/a;->enableTaskHide(Z)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/p;)Z

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/estrongs/a/a;->enableTaskHide(Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :goto_1d
    const/4 v6, 0x0

    if-eqz v10, :cond_55

    :try_start_17
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_55
    if-eqz v5, :cond_56

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    iget-object v3, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/g;)V
    :try_end_17
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :cond_56
    if-eqz v4, :cond_57

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_57

    const/4 v3, 0x4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v5, v7

    invoke-virtual {v4, v3, v5}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_57
    move v3, v6

    goto/16 :goto_4

    :catch_4
    move-exception v5

    move-object v5, v7

    goto :goto_1c

    :cond_58
    const/16 v23, 0x0

    :try_start_18
    move/from16 v0, v23

    invoke-virtual {v7, v6, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v0, v5

    move-wide/from16 v23, v0

    add-long v8, v8, v23

    iget-wide v0, v3, Lcom/estrongs/fs/b/k;->c:J

    move-wide/from16 v23, v0

    int-to-long v0, v5

    move-wide/from16 v25, v0

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    iput-wide v0, v3, Lcom/estrongs/fs/b/k;->c:J

    if-eqz v4, :cond_59

    const/16 v23, 0x9

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    iget-wide v0, v3, Lcom/estrongs/fs/b/k;->c:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/16 v23, 0x2

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    add-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v24, v25

    const/4 v5, 0x1

    aput-object v18, v24, v5

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_59
    if-eqz v4, :cond_53

    invoke-virtual {v4}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v5

    if-eqz v5, :cond_53

    if-nez v11, :cond_5a

    const/4 v5, 0x2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    sub-long v8, v13, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v11

    const/4 v8, 0x1

    aput-object v18, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :cond_5a
    if-eqz v7, :cond_5b

    :try_start_19
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    const/4 v7, 0x0

    :goto_1e
    const/4 v5, 0x1

    :try_start_1a
    invoke-virtual {v4, v5}, Lcom/estrongs/a/a;->enableTaskHide(Z)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v5}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/p;)Z

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/estrongs/a/a;->enableTaskHide(Z)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :cond_5b
    const/4 v5, 0x0

    if-eqz v10, :cond_5c

    :try_start_1b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_5c
    if-eqz v7, :cond_5d

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    iget-object v3, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/g;)V
    :try_end_1b
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :cond_5d
    if-eqz v4, :cond_5e

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5e

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_5e
    move v3, v5

    goto/16 :goto_4

    :cond_5f
    :try_start_1c
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    cmp-long v5, v8, v13

    if-gez v5, :cond_64

    if-nez v11, :cond_60

    if-eqz v4, :cond_60

    const/4 v5, 0x2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    sub-long v8, v13, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v11

    const/4 v8, 0x1

    aput-object v18, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :cond_60
    const/4 v5, 0x0

    if-eqz v10, :cond_61

    :try_start_1d
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_61
    if-eqz v7, :cond_62

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    iget-object v3, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/g;)V
    :try_end_1d
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_5
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :cond_62
    if-eqz v4, :cond_63

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_63

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_63
    move v3, v5

    goto/16 :goto_4

    :cond_64
    if-eqz v4, :cond_65

    const/16 v5, 0xd

    const/4 v8, 0x2

    :try_start_1e
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v18, v8, v9

    const/4 v9, 0x1

    aput-object v12, v8, v9

    invoke-virtual {v4, v5, v8}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_65
    iget-boolean v5, v3, Lcom/estrongs/fs/b/k;->d:Z

    if-eqz v5, :cond_66

    invoke-static {v12}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    if-eqz v4, :cond_6f

    instance-of v5, v4, Lcom/estrongs/fs/b/i;

    if-eqz v5, :cond_6f

    move-object v0, v4

    check-cast v0, Lcom/estrongs/fs/b/i;

    move-object v5, v0

    iget v8, v5, Lcom/estrongs/fs/b/i;->u:I

    invoke-static {v12}, Lcom/estrongs/fs/a/a;->h(Ljava/lang/String;)I

    move-result v9

    or-int/2addr v8, v9

    iput v8, v5, Lcom/estrongs/fs/b/i;->u:I

    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v5

    if-eqz v5, :cond_69

    move-object v0, v4

    check-cast v0, Lcom/estrongs/fs/b/i;

    move-object v5, v0

    iget-object v5, v5, Lcom/estrongs/fs/b/i;->s:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :cond_66
    :goto_1f
    if-eqz v10, :cond_67

    :try_start_1f
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_67
    if-eqz v7, :cond_27

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    iget-object v3, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/g;)V
    :try_end_1f
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1f .. :try_end_1f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_5
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    goto/16 :goto_f

    :catch_5
    move-exception v3

    if-eqz v4, :cond_68

    const/16 v5, 0x2710

    :try_start_20
    new-instance v6, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    const v8, 0x7f0b0208

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, ""

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v4, v5, v6}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    :cond_68
    if-eqz v4, :cond_35

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_35

    const/4 v3, 0x4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v22, v5, v6

    invoke-virtual {v4, v3, v5}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    goto/16 :goto_14

    :cond_69
    :try_start_21
    invoke-static {v12}, Lcom/estrongs/fs/impl/media/a;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d

    move-object v0, v4

    check-cast v0, Lcom/estrongs/fs/b/i;

    move-object v5, v0

    iget-object v5, v5, Lcom/estrongs/fs/b/i;->p:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    goto :goto_1f

    :catchall_0
    move-exception v5

    :goto_20
    if-eqz v10, :cond_6a

    :try_start_22
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_6a
    if-eqz v7, :cond_6b

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    iget-object v3, v3, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/g;)V

    :cond_6b
    throw v5
    :try_end_22
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_22 .. :try_end_22} :catch_2
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_5
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    :catchall_1
    move-exception v3

    move-object v5, v3

    if-eqz v4, :cond_6c

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6c

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_6c
    throw v5

    :cond_6d
    :try_start_23
    invoke-static {v12}, Lcom/estrongs/fs/impl/media/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    move-object v0, v4

    check-cast v0, Lcom/estrongs/fs/b/i;

    move-object v5, v0

    iget-object v5, v5, Lcom/estrongs/fs/b/i;->q:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    :cond_6e
    invoke-static {v12}, Lcom/estrongs/fs/impl/media/a;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    move-object v0, v4

    check-cast v0, Lcom/estrongs/fs/b/i;

    move-object v5, v0

    iget-object v5, v5, Lcom/estrongs/fs/b/i;->r:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    :cond_6f
    invoke-static {v12}, Lcom/estrongs/fs/impl/local/d;->j(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto/16 :goto_1f

    :cond_70
    if-nez v7, :cond_72

    if-eqz v4, :cond_71

    const/4 v5, 0x1

    const/4 v6, 0x2

    :try_start_24
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_71
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_24
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_24 .. :try_end_24} :catch_2
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_5
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    :cond_72
    const/4 v5, 0x1

    if-eqz v4, :cond_73

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_73

    const/4 v3, 0x4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v3, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/k;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/fs/b/k;->e:Z

    :cond_73
    move v3, v5

    goto/16 :goto_4

    :cond_74
    :try_start_25
    new-instance v5, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    const v7, 0x7f0b0208

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, ""

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    move-object v3, v5

    goto/16 :goto_13

    :catch_6
    move-exception v5

    goto/16 :goto_1e

    :catchall_2
    move-exception v6

    move-object v7, v5

    move-object v5, v6

    goto/16 :goto_20

    :catch_7
    move-exception v5

    goto/16 :goto_19

    :cond_75
    move-object v5, v7

    goto/16 :goto_1d

    :cond_76
    move-object v10, v8

    goto/16 :goto_18

    :cond_77
    move v8, v15

    move/from16 v9, v16

    move/from16 v7, v17

    move-object/from16 v3, v18

    goto/16 :goto_3

    :cond_78
    move-wide v13, v7

    goto/16 :goto_10

    :cond_79
    move-object v7, v10

    goto/16 :goto_d

    :cond_7a
    move/from16 v7, v17

    move-object/from16 v3, v18

    goto/16 :goto_3

    :cond_7b
    move v8, v9

    goto/16 :goto_8

    :cond_7c
    move v5, v7

    move v7, v8

    move v8, v9

    goto/16 :goto_9

    :cond_7d
    move v11, v5

    goto/16 :goto_6

    :cond_7e
    move v11, v5

    goto/16 :goto_6

    :cond_7f
    move-object/from16 v3, v18

    goto/16 :goto_3

    :cond_80
    move/from16 v19, v3

    move/from16 v20, v7

    move-object/from16 v21, v8

    goto/16 :goto_2

    :cond_81
    move/from16 v19, v3

    move/from16 v20, v7

    move-object/from16 v21, v8

    goto/16 :goto_2
.end method

.method public a(Lcom/estrongs/fs/g;)Z
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/d;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/estrongs/fs/g;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/estrongs/fs/g;Ljava/lang/String;Z)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p0, p2}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/estrongs/fs/FileExistException;

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/fs/FileExistException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/j;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v4, v0, Lcom/estrongs/fs/impl/f/a;

    if-eqz v4, :cond_5

    check-cast v0, Lcom/estrongs/fs/impl/f/a;

    invoke-virtual {v0, p1, v3}, Lcom/estrongs/fs/impl/f/a;->a(Lcom/estrongs/fs/g;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/fs/b/ab;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/fs/b/g;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/g;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {v2}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :goto_1
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    if-eqz v0, :cond_1

    instance-of v2, v1, Lcom/estrongs/fs/b/ab;

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/estrongs/fs/b/g;

    if-nez v2, :cond_1

    instance-of v1, v1, Lcom/estrongs/android/pop/view/utils/y;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/g;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {v2, p2}, Lcom/estrongs/fs/impl/local/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-static {v2, p2}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :pswitch_3
    invoke-static {v2, p2}, Lcom/estrongs/fs/impl/q/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :pswitch_4
    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/estrongs/fs/FsProviderNotFoundException;

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/a/a;->a(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/FsProviderNotFoundException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_6
    invoke-interface {v0, v2, p2}, Lcom/estrongs/old/fs/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :pswitch_5
    invoke-static {v2, p2}, Lcom/estrongs/fs/impl/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :pswitch_6
    :try_start_0
    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/i/b;->e(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_7
    :try_start_1
    invoke-static {v2, p2}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/a/b/p;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/fs/d;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;Lcom/estrongs/fs/g;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/fs/g;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    :goto_1
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v10

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v11

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v11, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;)V

    :cond_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v13

    const/4 v4, 0x1

    if-eqz v6, :cond_c

    if-eqz v13, :cond_c

    if-eqz v10, :cond_1a

    const-class v2, Lcom/estrongs/a/a/e;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    aput-object v1, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v10, v2, v14}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/c;

    move-result-object v2

    check-cast v2, Lcom/estrongs/a/a/e;

    if-eqz v2, :cond_1a

    const/4 v5, 0x0

    iget-boolean v4, v2, Lcom/estrongs/a/a/e;->f:Z

    if-eqz v4, :cond_7

    iget v4, v2, Lcom/estrongs/a/a/e;->g:I

    const/4 v14, 0x1

    if-ne v4, v14, :cond_7

    const/4 v6, 0x0

    :cond_7
    iget v4, v2, Lcom/estrongs/a/a/e;->g:I

    const/4 v14, 0x5

    if-ne v4, v14, :cond_8

    const/4 v5, 0x1

    :cond_8
    iget v4, v2, Lcom/estrongs/a/a/e;->g:I

    move v2, v4

    move v4, v5

    move v5, v6

    :goto_3
    const/4 v6, 0x2

    if-ne v2, v6, :cond_9

    const/4 v2, 0x2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v1}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v6

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-virtual {v10, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v10, v1, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    move v6, v5

    move v5, v4

    goto/16 :goto_2

    :cond_9
    const/4 v6, 0x3

    if-ne v2, v6, :cond_b

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;)V

    :cond_a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_b
    move v6, v5

    move v5, v4

    move v4, v2

    :cond_c
    if-eqz v5, :cond_d

    :try_start_2
    invoke-static {v3}, Lcom/estrongs/fs/c/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v3, v14, v15

    invoke-virtual {v10, v2, v14}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_d
    const/4 v2, 0x0

    if-eqz v13, :cond_10

    const/4 v14, 0x1

    if-ne v4, v14, :cond_10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v3, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, ".bak."

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v14, Lcom/estrongs/fs/m;

    invoke-direct {v14, v3}, Lcom/estrongs/fs/m;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/estrongs/fs/d;->b(Lcom/estrongs/fs/g;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v14

    if-nez v14, :cond_10

    const/4 v1, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;)V

    :cond_e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_f
    move-object v2, v3

    goto :goto_4

    :cond_10
    :try_start_3
    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_13

    if-eqz v13, :cond_11

    const/4 v1, 0x1

    if-ne v4, v1, :cond_11

    new-instance v1, Lcom/estrongs/fs/m;

    invoke-direct {v1, v2}, Lcom/estrongs/fs/m;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/fs/d;->b(Lcom/estrongs/fs/g;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_11
    const/4 v1, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_12

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;)V

    :cond_12
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_13
    if-eqz v13, :cond_14

    const/4 v3, 0x1

    if-ne v4, v3, :cond_14

    :try_start_4
    invoke-interface {v1}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/fs/l;->b()Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v3, Lcom/estrongs/fs/m;

    invoke-direct {v3, v2}, Lcom/estrongs/fs/m;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;)Z

    :cond_14
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/estrongs/fs/n;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v1}, Lcom/estrongs/fs/n;-><init>(Lcom/estrongs/fs/g;Ljava/lang/String;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_15

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;)V

    :cond_15
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    :cond_16
    throw v1

    :cond_17
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_18

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;)V

    :cond_18
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_19

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/estrongs/fs/a/b;->a(Ljava/util/List;)V

    :cond_19
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_1a
    move v2, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_3

    :cond_1b
    move-object v7, v1

    goto/16 :goto_1
.end method

.method public a(Ljava/util/List;Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)Z"
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-direct {p0, v0}, Lcom/estrongs/fs/d;->b(Lcom/estrongs/fs/g;)Z

    move-result v4

    and-int/2addr v4, v1

    if-nez v4, :cond_6

    instance-of v1, v2, Lcom/estrongs/fs/b/o;

    if-eqz v1, :cond_c

    move-object v1, v2

    check-cast v1, Lcom/estrongs/fs/b/o;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/o;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    const-class v1, Lcom/estrongs/a/a/g;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v5

    invoke-virtual {v2, v1, v7}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/c;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/a/c;->g:I

    if-ne v1, v11, :cond_c

    move-object v1, v2

    check-cast v1, Lcom/estrongs/fs/b/o;

    iget-object v7, v1, Lcom/estrongs/fs/b/o;->j:Ljava/util/List;

    if-nez v7, :cond_4

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, v1, Lcom/estrongs/fs/b/o;->j:Ljava/util/List;

    :cond_4
    iget-object v1, v1, Lcom/estrongs/fs/b/o;->j:Ljava/util/List;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    :goto_2
    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/estrongs/fs/l;->a()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v7

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/estrongs/fs/a/b;->c(Ljava/lang/String;)V

    :cond_5
    if-nez v1, :cond_8

    :goto_3
    instance-of v0, v2, Lcom/estrongs/fs/b/o;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    check-cast v2, Lcom/estrongs/fs/b/o;

    iget v1, v2, Lcom/estrongs/fs/b/o;->i:I

    invoke-virtual {v0, p2, v1}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    goto :goto_0

    :cond_6
    instance-of v1, v2, Lcom/estrongs/fs/b/o;

    if-eqz v1, :cond_7

    move-object v1, v2

    check-cast v1, Lcom/estrongs/fs/b/o;

    iget-object v1, v1, Lcom/estrongs/fs/b/o;->j:Ljava/util/List;

    if-eqz v1, :cond_7

    move-object v1, v2

    check-cast v1, Lcom/estrongs/fs/b/o;

    iget-object v1, v1, Lcom/estrongs/fs/b/o;->j:Ljava/util/List;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v2, :cond_9

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_4
    move v1, v4

    goto/16 :goto_1

    :cond_a
    new-array v1, v11, [Ljava/lang/Object;

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v5

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    invoke-virtual {v2, v3, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_9

    new-array v1, v11, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v5

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {v2, v11, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    instance-of v0, v2, Lcom/estrongs/android/pop/view/utils/y;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_c
    move v1, v5

    goto/16 :goto_2

    :cond_d
    move v4, v1

    goto/16 :goto_3
.end method

.method public b(Ljava/lang/String;J)Ljava/io/OutputStream;
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/estrongs/fs/impl/q/b;->b(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->an(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/d;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/estrongs/fs/impl/i/b;->b(Ljava/lang/String;J)Ljava/io/OutputStream;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/d;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileOutputStream(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Lcom/estrongs/fs/g;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/estrongs/fs/d;->b(Lcom/estrongs/fs/g;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/estrongs/fs/g;Ljava/lang/String;Z)Z
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/j;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/estrongs/fs/j;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/estrongs/fs/impl/local/d;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/estrongs/fs/impl/o/b;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/estrongs/fs/impl/q/b;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/estrongs/old/fs/a;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    :pswitch_5
    invoke-static {p1}, Lcom/estrongs/fs/impl/c/a;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_6
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/i/b;->e(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_7
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->exists(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_8
    move v0, v1

    goto :goto_0

    :pswitch_9
    invoke-static {p1}, Lcom/estrongs/fs/impl/h/b;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_a
    invoke-static {p1}, Lcom/estrongs/fs/impl/j/b;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_b
    invoke-static {p1}, Lcom/estrongs/fs/impl/p/b;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_c
    invoke-static {p1}, Lcom/estrongs/fs/impl/d/b;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    new-instance v3, Lcom/estrongs/fs/n;

    if-nez p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {v3, p1, v0}, Lcom/estrongs/fs/n;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/g;)V

    :cond_3
    :goto_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/local/d;->a(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1

    :pswitch_2
    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1

    :pswitch_3
    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/q/b;->b(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1

    :pswitch_4
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v1

    if-eqz p2, :cond_4

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-interface {v1, p1}, Lcom/estrongs/old/fs/a;->a(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :pswitch_5
    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/c/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1

    :pswitch_6
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/estrongs/fs/impl/i/b;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_7
    :try_start_1
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->createFile(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public c(Ljava/lang/String;)Lcom/estrongs/fs/c;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/estrongs/fs/impl/local/d;->c(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/estrongs/fs/impl/o/b;->f(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/estrongs/fs/impl/q/b;->a(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/estrongs/old/fs/a;->g(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    :pswitch_5
    invoke-static {p1}, Lcom/estrongs/fs/impl/c/a;->f(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/impl/i/b;->g(Ljava/lang/String;)Lcom/estrongs/fs/c;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    :pswitch_7
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileInfo(Ljava/lang/String;)Lcom/estrongs/fs/c;
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public c(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/estrongs/fs/a/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/estrongs/fs/impl/local/d;->g(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-static {p1}, Lcom/estrongs/fs/impl/o/b;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :pswitch_3
    invoke-static {p1}, Lcom/estrongs/fs/impl/q/b;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :pswitch_4
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/estrongs/old/fs/a;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :pswitch_5
    invoke-static {p1}, Lcom/estrongs/fs/impl/c/a;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :pswitch_6
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/i/b;->i(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_7
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->mkDirs(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public d(Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/estrongs/fs/impl/local/d;->e(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/estrongs/fs/impl/o/b;->d(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/estrongs/fs/impl/q/b;->b(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/estrongs/old/fs/a;->e(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    :pswitch_5
    invoke-static {p1}, Lcom/estrongs/fs/impl/c/a;->a(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :pswitch_6
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/i/b;->h(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    :pswitch_7
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileLength(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public e(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    :pswitch_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/estrongs/fs/impl/local/d;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/estrongs/fs/impl/o/b;->h(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/estrongs/old/fs/a;->i(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    :pswitch_5
    invoke-static {p1}, Lcom/estrongs/fs/impl/c/a;->h(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/fs/impl/i/b;->b(Ljava/lang/String;J)Ljava/io/OutputStream;
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :pswitch_7
    const-wide/16 v0, -0x1

    :try_start_1
    sget-object v2, Lcom/estrongs/android/util/TypedMap;->EMPTY:Lcom/estrongs/android/util/TypedMap;

    invoke-static {p1, v0, v1, v2}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getFileOutputStream(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/fs/d;->c(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/estrongs/fs/impl/local/d;->h(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/estrongs/fs/impl/o/b;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/estrongs/fs/impl/q/b;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/estrongs/old/fs/a;->f(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    :pswitch_5
    invoke-static {p1}, Lcom/estrongs/fs/impl/c/a;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_6
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/i/b;->j(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_7
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->isDir(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    iget-object v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {p0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public j(Ljava/lang/String;)Lcom/estrongs/fs/g;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;ZZ)Lcom/estrongs/fs/g;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getThumbnail(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->an(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/i/b;->k(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->an(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aK(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/d;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/i/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public o(Ljava/lang/String;)Lcom/estrongs/fs/j;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/fs/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/j;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/fs/d;->p(Ljava/lang/String;)Lcom/estrongs/fs/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/j;)V

    goto :goto_0
.end method
