.class public Lcom/estrongs/a/l;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/estrongs/a/l;


# instance fields
.field public final a:Lcom/estrongs/a/a/k;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/a/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Lcom/estrongs/a/o;

.field private h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/estrongs/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/fs/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/task/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tasks.rpt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/a/l;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/a/l;->c:Lcom/estrongs/a/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/a/l;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/a/l;->e:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/estrongs/a/l;->f:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/a/l;->g:Lcom/estrongs/a/o;

    new-instance v0, Lcom/estrongs/a/m;

    invoke-direct {v0, p0}, Lcom/estrongs/a/m;-><init>(Lcom/estrongs/a/l;)V

    iput-object v0, p0, Lcom/estrongs/a/l;->a:Lcom/estrongs/a/a/k;

    new-instance v0, Lcom/estrongs/a/n;

    invoke-direct {v0, p0}, Lcom/estrongs/a/n;-><init>(Lcom/estrongs/a/l;)V

    iput-object v0, p0, Lcom/estrongs/a/l;->h:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/estrongs/a/l;->d()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/estrongs/a/a;
    .locals 2

    const-string v0, "task_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v1, v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/b/q;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/estrongs/fs/b/q;-><init>(Lcom/estrongs/fs/d;Lorg/json/JSONObject;)V

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x17

    if-ne v1, v0, :cond_1

    new-instance v0, Lcom/estrongs/fs/b/z;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/estrongs/fs/b/z;-><init>(Lcom/estrongs/fs/d;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/estrongs/a/a;

    invoke-direct {v0, p1}, Lcom/estrongs/a/a;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/estrongs/a/l;
    .locals 2

    const-class v1, Lcom/estrongs/a/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/a/l;->c:Lcom/estrongs/a/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/a/l;

    invoke-direct {v0}, Lcom/estrongs/a/l;-><init>()V

    sput-object v0, Lcom/estrongs/a/l;->c:Lcom/estrongs/a/l;

    :cond_0
    sget-object v0, Lcom/estrongs/a/l;->c:Lcom/estrongs/a/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-object v1
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/a/l;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/estrongs/a/l;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/estrongs/a/l;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v1, Lcom/estrongs/a/l;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/fs/c/d;->i(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    move-object v2, v1

    :goto_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    :goto_2
    invoke-static {v0}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    invoke-static {v1}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private c(Lcom/estrongs/a/a;Z)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/a/l;->a:Lcom/estrongs/a/a/k;

    invoke-virtual {p1, v0}, Lcom/estrongs/a/a;->removeTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V

    iget-object v0, p0, Lcom/estrongs/a/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/a/a;->requestStop()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/a/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/a/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    const-string v4, "task_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/estrongs/a/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/a/l;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTastType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private d()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/estrongs/a/l;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/c/d;->j(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/estrongs/a/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/estrongs/a/l;->a(Lorg/json/JSONObject;)Lcom/estrongs/a/a;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/estrongs/a/l;->d(Lcom/estrongs/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(Lcom/estrongs/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/l;->a:Lcom/estrongs/a/a/k;

    invoke-virtual {p1, v0}, Lcom/estrongs/a/a;->addTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V

    iget-object v0, p0, Lcom/estrongs/a/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/estrongs/a/a;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/estrongs/a/l;->a(Lcom/estrongs/a/a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/estrongs/a/a;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/a/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/estrongs/a/l;->d(Lcom/estrongs/a/a;)V

    iget-object v0, p0, Lcom/estrongs/a/l;->g:Lcom/estrongs/a/o;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/a/l;->g:Lcom/estrongs/a/o;

    invoke-interface {v0, p1}, Lcom/estrongs/a/o;->a(Lcom/estrongs/a/a;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/a/l;->b(Lcom/estrongs/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/a/l;->a:Lcom/estrongs/a/a/k;

    invoke-virtual {p1, v0}, Lcom/estrongs/a/a;->addTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/estrongs/a/o;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/l;->g:Lcom/estrongs/a/o;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/a/l;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/a/l;->h:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/estrongs/a/l;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized b(Lcom/estrongs/a/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/a/l;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/a/l;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/a/l;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/estrongs/a/a;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/a/l;->c(Lcom/estrongs/a/a;Z)V

    iget-object v0, p0, Lcom/estrongs/a/l;->g:Lcom/estrongs/a/o;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/a/l;->g:Lcom/estrongs/a/o;

    invoke-interface {v0, p1}, Lcom/estrongs/a/o;->b(Lcom/estrongs/a/a;)V

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/a/l;->c()V

    return-void
.end method

.method public c(Lcom/estrongs/a/a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/a/l;->b(Lcom/estrongs/a/a;Z)V

    return-void
.end method
