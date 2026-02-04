.class public Lcom/estrongs/fs/impl/m/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/j;


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private static b:Lcom/estrongs/fs/impl/m/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/m/b;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/estrongs/fs/impl/m/b;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/m/b;->b:Lcom/estrongs/fs/impl/m/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/m/b;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/m/b;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/m/b;->b:Lcom/estrongs/fs/impl/m/b;

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/m/b;->b:Lcom/estrongs/fs/impl/m/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/b/l;Lcom/estrongs/fs/b/u;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/estrongs/a/b/l",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/estrongs/fs/b/u;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/b/m;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-static {p3}, Lcom/estrongs/android/pop/app/b/i;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/q;->p()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v4, Lcom/estrongs/android/pop/app/b/j;

    invoke-direct {v4, v0, v6}, Lcom/estrongs/android/pop/app/b/j;-><init>(Ljava/util/Map;Z)V

    :cond_1
    :try_start_0
    const-string v3, "recursion"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v3, v1}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->p()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/estrongs/fs/impl/m/b;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/estrongs/fs/h;ZZLcom/estrongs/fs/b/u;Ljava/util/List;)V

    return-object v2

    :catch_0
    move-exception v0

    move v5, v1

    goto :goto_0

    :cond_2
    move v6, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/estrongs/fs/h;ZZLcom/estrongs/fs/b/u;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/h;",
            "ZZ",
            "Lcom/estrongs/fs/b/u;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/b/m;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/pop/utils/bx;->a()I

    move-result v2

    sget v3, Lcom/estrongs/android/pop/utils/bx;->b:I

    if-ge v2, v3, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v2, p4

    check-cast v2, Lcom/estrongs/android/pop/app/b/j;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/b/j;->a()Lcom/estrongs/android/pop/app/b/n;

    move-result-object v10

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/estrongs/fs/m;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/estrongs/fs/m;-><init>(Ljava/lang/String;)V

    const-string v3, "needCheckStorageLink"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/estrongs/fs/g;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/g;

    const-string v2, "needCheckStorageLink"

    invoke-interface {v3, v2}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->bt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v8, v4

    :goto_2
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/a/b/l;

    invoke-virtual/range {v2 .. v7}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;ZZLcom/estrongs/fs/h;Lcom/estrongs/a/b/l;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz v5, :cond_11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_11

    new-instance v2, Lcom/estrongs/android/view/ae;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7fffffff

    invoke-direct {v2, v3, v6}, Lcom/estrongs/android/view/ae;-><init>(Ljava/lang/String;I)V

    move-object v3, v2

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/g;

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {v3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->bn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    const/4 v2, 0x0

    move v8, v2

    goto :goto_2

    :cond_7
    invoke-interface {v2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/io/File;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/estrongs/android/util/ak;->a(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_8
    invoke-static {}, Lcom/estrongs/android/util/ak;->h()Lcom/estrongs/fs/h;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/estrongs/fs/h;->a(Lcom/estrongs/fs/g;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v11, :cond_9

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v7, v13

    const/4 v13, 0x1

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v7, v13

    invoke-virtual {v11, v6, v7}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {v3, v2}, Lcom/estrongs/android/view/ae;->a(Lcom/estrongs/fs/g;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p6, :cond_a

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_a
    invoke-interface {v2}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v6

    invoke-virtual {v6}, Lcom/estrongs/fs/l;->a()Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz p5, :cond_b

    const-string v6, "needCheckStorageLink"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lcom/estrongs/fs/g;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz p4, :cond_c

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/estrongs/fs/h;->a(Lcom/estrongs/fs/g;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_c
    if-nez v4, :cond_d

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    new-instance v6, Lcom/estrongs/fs/impl/m/a;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1, v2}, Lcom/estrongs/fs/impl/m/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/g;)V

    if-eqz v10, :cond_e

    invoke-virtual {v10}, Lcom/estrongs/android/pop/app/b/n;->a()I

    move-result v2

    iput v2, v6, Lcom/estrongs/fs/impl/m/a;->a:I

    :cond_e
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_f
    if-eqz v4, :cond_1

    new-instance v2, Lcom/estrongs/fs/impl/m/c;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/estrongs/fs/impl/m/c;-><init>(Lcom/estrongs/fs/impl/m/b;)V

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_10
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/t;

    move-object/from16 v0, p7

    invoke-interface {v0, v2, v4}, Lcom/estrongs/fs/b/u;->a(Lcom/estrongs/fs/b/t;Ljava/util/List;)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;Ljava/util/List;Z)V

    goto/16 :goto_0

    :cond_11
    move-object v3, v2

    goto/16 :goto_3

    :cond_12
    move v8, v2

    goto/16 :goto_2
.end method

.method private d(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/b/m;",
            ">;"
        }
    .end annotation

    const-string v0, "keyword"

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/i;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v4, Lcom/estrongs/android/pop/app/b/m;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Lcom/estrongs/android/pop/app/b/m;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v3
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/estrongs/fs/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/estrongs/fs/g;Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/g;",
            "Lcom/estrongs/fs/h;",
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

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v0, "pattern"

    invoke-virtual {p3, v0}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "partialListener"

    invoke-virtual {p3, v0}, Lcom/estrongs/android/util/TypedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/estrongs/fs/b/u;

    const-string v0, "searchPath"

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_4

    :goto_0
    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/estrongs/fs/impl/m/b;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {v1, p3}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/aw;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/storage/emulated/legacy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/storage/emulated/legacy"

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v1, v2, p2, v3}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/h;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/fs/impl/m/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/b/l;Lcom/estrongs/fs/b/u;Ljava/util/List;)Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v5

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v6

    const/4 v8, 0x1

    sget-object v10, Lcom/estrongs/a/b/l;->a:Lcom/estrongs/a/b/l;

    move-object v9, p2

    invoke-virtual/range {v5 .. v10}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;ZZLcom/estrongs/fs/h;Lcom/estrongs/a/b/l;)Ljava/util/List;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    new-instance v5, Lcom/estrongs/fs/impl/m/a;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-direct {v5, v2, v4, v0}, Lcom/estrongs/fs/impl/m/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/g;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
