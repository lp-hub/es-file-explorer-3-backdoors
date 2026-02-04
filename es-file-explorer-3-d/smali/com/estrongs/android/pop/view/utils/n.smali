.class public Lcom/estrongs/android/pop/view/utils/n;
.super Ljava/lang/Object;


# static fields
.field public static final b:Ljava/lang/String;

.field private static c:I

.field private static d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static n:[Lcom/estrongs/android/pop/view/utils/v;

.field private static q:Lcom/estrongs/android/pop/view/utils/n;

.field private static r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/view/utils/u;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Z

.field private static t:Ljava/lang/String;


# instance fields
.field a:J

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private o:Ljava/lang/Object;

.field private p:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput v3, Lcom/estrongs/android/pop/view/utils/n;->c:I

    sput-object v2, Lcom/estrongs/android/pop/view/utils/n;->d:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/pop/a;->e:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/recomm_items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/icons"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/thumbnail_pics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/recomm_items_download_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->j:Ljava/lang/String;

    sput-object v2, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    sput-object v2, Lcom/estrongs/android/pop/view/utils/n;->q:Lcom/estrongs/android/pop/view/utils/n;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:Ljava/util/HashMap;

    sput-boolean v3, Lcom/estrongs/android/pop/view/utils/n;->s:Z

    const-string v0, "PreferActivity"

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/utils/n;->a:J

    iput-object v2, p0, Lcom/estrongs/android/pop/view/utils/n;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/view/utils/n;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/utils/n;->m:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/n;->o:Ljava/lang/Object;

    iput-object v2, p0, Lcom/estrongs/android/pop/view/utils/n;->p:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/utils/n;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/utils/n;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Lcom/estrongs/android/pop/view/utils/u;
    .locals 3

    sget-boolean v0, Lcom/estrongs/android/pop/view/utils/n;->s:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/pop/view/utils/n;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/view/utils/n;->s:Z

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->r:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/utils/u;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    sget-object v2, Lcom/estrongs/android/pop/m;->S:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/estrongs/android/pop/m;->S:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/pop/m;->d(Ljava/lang/String;)Lcom/estrongs/android/pop/view/utils/u;

    move-result-object v0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->r:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->t:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/android/pop/view/utils/u;)V
    .locals 3

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->r:Ljava/util/HashMap;

    monitor-enter v1

    if-nez p2, :cond_0

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {p0}, Lcom/estrongs/android/pop/view/utils/n;->c(Landroid/app/Activity;)V

    monitor-exit v1

    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/utils/u;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/utils/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/utils/n;->h()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/utils/n;Lcom/estrongs/android/util/x;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/utils/n;->a(Lcom/estrongs/android/util/x;)V

    return-void
.end method

.method public static a(Lcom/estrongs/android/pop/view/utils/v;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private a(Lcom/estrongs/android/util/x;)V
    .locals 4

    iget-object v0, p1, Lcom/estrongs/android/util/x;->d:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/utils/v;

    check-cast v0, Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, v0, Lcom/estrongs/android/pop/view/utils/v;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.estrongs.com/channel?aid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/util/x;

    invoke-direct {v2, v1}, Lcom/estrongs/android/util/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/estrongs/android/util/x;->c()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/view/utils/v;->y:Z

    goto :goto_0
.end method

.method private declared-synchronized a([Lcom/estrongs/android/pop/view/utils/v;)V
    .locals 14

    const/4 v13, 0x4

    const-wide/16 v2, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v8, "######"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    if-ne v8, v12, :cond_0

    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v9, 0x2

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    move v5, v4

    :goto_1
    array-length v0, p1

    if-ge v5, v0, :cond_1

    aget-object v0, p1, v5

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    aget-object v1, p1, v5

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    aget-object v8, p1, v5

    if-nez v0, :cond_6

    move v0, v4

    :goto_2
    iput v0, v8, Lcom/estrongs/android/pop/view/utils/v;->q:I

    aget-object v8, p1, v5

    if-nez v1, :cond_7

    move-wide v0, v2

    :goto_3
    iput-wide v0, v8, Lcom/estrongs/android/pop/view/utils/v;->t:J

    aget-object v0, p1, v5

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-eq v0, v11, :cond_3

    aget-object v0, p1, v5

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-eq v0, v12, :cond_3

    aget-object v0, p1, v5

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-ne v0, v13, :cond_5

    :cond_3
    aget-object v0, p1, v5

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v0, v8, v2

    if-eqz v0, :cond_4

    aget-object v0, p1, v5

    iget-wide v8, v0, Lcom/estrongs/android/pop/view/utils/v;->t:J

    cmp-long v0, v8, v2

    if-nez v0, :cond_8

    :cond_4
    aget-object v0, p1, v5

    const/4 v1, 0x0

    iput v1, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    :cond_5
    :goto_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_3

    :cond_8
    aget-object v0, p1, v5

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-ne v0, v11, :cond_9

    aget-object v0, p1, v5

    const/4 v8, 0x4

    iput v8, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    :cond_9
    aget-object v0, p1, v5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/estrongs/android/pop/view/utils/v;->u:J

    aget-object v0, p1, v5

    iget-wide v0, v0, Lcom/estrongs/android/pop/view/utils/v;->u:J

    aget-object v8, p1, v5

    iget-wide v8, v8, Lcom/estrongs/android/pop/view/utils/v;->t:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_5

    aget-object v0, p1, v5

    const/4 v1, 0x3

    iput v1, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)[Lcom/estrongs/android/pop/view/utils/t;
    .locals 7

    const/4 v0, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "*/*"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move v2, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    const-class v1, Lcom/estrongs/android/pop/app/DownloaderActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-class v1, Lcom/estrongs/android/pop/app/BrowserDownloaderActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    new-instance v6, Lcom/estrongs/android/pop/view/utils/t;

    invoke-direct {v6}, Lcom/estrongs/android/pop/view/utils/t;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v6, Lcom/estrongs/android/pop/view/utils/t;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v6, Lcom/estrongs/android/pop/view/utils/t;->b:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, v6, Lcom/estrongs/android/pop/view/utils/t;->c:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, v6, Lcom/estrongs/android/pop/view/utils/t;->d:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-array v0, v3, [Lcom/estrongs/android/pop/view/utils/t;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/android/pop/view/utils/t;

    goto :goto_0
.end method

.method public static declared-synchronized b()Lcom/estrongs/android/pop/view/utils/n;
    .locals 2

    const-class v1, Lcom/estrongs/android/pop/view/utils/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->q:Lcom/estrongs/android/pop/view/utils/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/view/utils/n;

    invoke-direct {v0}, Lcom/estrongs/android/pop/view/utils/n;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->q:Lcom/estrongs/android/pop/view/utils/n;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->q:Lcom/estrongs/android/pop/view/utils/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static b(Lcom/estrongs/android/pop/view/utils/v;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, p1

    :cond_0
    return-void
.end method

.method private static b(Landroid/app/Activity;)Z
    .locals 11

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/estrongs/android/pop/view/utils/n;->t:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sget-object v4, Lcom/estrongs/android/pop/view/utils/n;->r:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v5, Lcom/estrongs/android/pop/view/utils/n;->r:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "######"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    sget-object v6, Lcom/estrongs/android/pop/view/utils/n;->r:Ljava/util/HashMap;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    new-instance v8, Lcom/estrongs/android/pop/view/utils/u;

    const/4 v9, 0x1

    aget-object v9, v5, v9

    const/4 v10, 0x2

    aget-object v5, v5, v10

    invoke-direct {v8, v9, v5}, Lcom/estrongs/android/pop/view/utils/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v0, v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)I
    .locals 11

    const/4 v3, -0x1

    const/4 v4, 0x0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    new-array v2, v1, [B

    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/util/zip/InflaterInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v7}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_1
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v5, v2, v7, v8}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v7

    if-lez v7, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move v1, v3

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/InflaterInputStream;->close()V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v1, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v1}, Lorg/json/simple/parser/JSONParser;-><init>()V

    invoke-virtual {v1, v2}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v5, "channel_title"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/utils/n;->k:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v5, "pic_url"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/utils/n;->l:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v5, "hash_code"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v5, Lcom/estrongs/android/pop/view/utils/n;->d:Ljava/lang/String;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/estrongs/android/pop/view/utils/n;->d:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    if-eqz v5, :cond_2

    move v1, v4

    goto/16 :goto_0

    :cond_2
    sput-object v1, Lcom/estrongs/android/pop/view/utils/n;->d:Ljava/lang/String;

    check-cast v2, Ljava/util/Map;

    const-string v1, "content"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Lorg/json/simple/JSONArray;

    if-eqz v1, :cond_e

    move-object v0, v2

    check-cast v0, Lorg/json/simple/JSONArray;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/json/simple/JSONArray;->size()I

    move-result v1

    new-array v7, v1, [Lcom/estrongs/android/pop/view/utils/v;

    check-cast v2, Lorg/json/simple/JSONArray;

    invoke-virtual {v2}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v4

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v9, Lcom/estrongs/android/pop/view/utils/v;

    invoke-direct {v9}, Lcom/estrongs/android/pop/view/utils/v;-><init>()V

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v10, "icon"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->a:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v10, "title"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->c:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v10, "pic"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    iget-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    iget-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Lcom/estrongs/android/util/x;

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->m:[Lcom/estrongs/android/util/x;

    iget-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    iget-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Lcom/estrongs/android/util/x;

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->o:[Lcom/estrongs/android/util/x;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v10, "size"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->s:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v10, "aid"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->b:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v10, "package"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v10, "url"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v10, "shortDesc"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->g:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v10, "longDesc"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->h:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v10, "version"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->i:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v10, "types"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->j:Ljava/lang/String;

    iget-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->j:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    const-string v10, "cn.wps.moffice_eng"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    const-string v10, "cn.wps.moffice"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    const-string v1, "text/plain;application/msexcel;application/ms-excel;application/vnd.ms-excel;application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;application/vnd.openxmlformats-officedocument.spreadsheetml.template;application/mspowerpoint;application/ms-powerpoint;application/vnd.ms-powerpoint;application/vnd.openxmlformats-officedocument.presentationml.presentation;application/vnd.openxmlformats-officedocument.presentationml.template;application/vnd.openxmlformats-officedocument.presentationml.slideshow;application/msword;application/ms-word;application/vnd.ms-word;application/vnd.ms-works;application/vnd.openxmlformats-officedocument.wordprocessingml.document;application/vnd.openxmlformats-officedocument.wordprocessingml.template;application/octet-stream;application/log;application/kswps;application/kset;application/ksdps;application/wps;application/et;application/dps;application/dpt;application/wpt;application/ett"

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->j:Ljava/lang/String;

    :cond_4
    :goto_3
    invoke-virtual {p0, v9}, Lcom/estrongs/android/pop/view/utils/n;->b(Lcom/estrongs/android/pop/view/utils/v;)I

    move-result v1

    iput v1, v9, Lcom/estrongs/android/pop/view/utils/v;->v:I

    const-string v1, "show"

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/estrongs/android/pop/view/utils/v;->w:Z

    :cond_5
    const-string v1, "vcode"

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    iput v1, v9, Lcom/estrongs/android/pop/view/utils/v;->x:I

    add-int/lit8 v1, v5, 0x1

    aput-object v9, v7, v5

    move v5, v1

    goto/16 :goto_2

    :cond_6
    iget-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    const-string v10, "com.uc.browser"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    const-string v10, "com.uc.browser.hd"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    const-string v10, "com.uc.browser.en"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_7
    const-string v1, "text/plain;text/html"

    iput-object v1, v9, Lcom/estrongs/android/pop/view/utils/v;->j:Ljava/lang/String;

    goto :goto_3

    :cond_8
    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    if-eqz v1, :cond_b

    move v2, v4

    :goto_4
    array-length v1, v7

    if-ge v2, v1, :cond_c

    move v1, v4

    :goto_5
    sget-object v5, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v5, v5

    if-ge v1, v5, :cond_9

    sget-object v5, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    aget-object v8, v7, v2

    iget-object v8, v8, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    aget-object v5, v7, v2

    sget-object v8, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    iput-object v8, v5, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    aget-object v5, v7, v2

    sget-object v8, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    iput-object v8, v5, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    aget-object v5, v7, v2

    sget-object v8, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/estrongs/android/pop/view/utils/v;->o:[Lcom/estrongs/android/util/x;

    iput-object v8, v5, Lcom/estrongs/android/pop/view/utils/v;->o:[Lcom/estrongs/android/util/x;

    aget-object v5, v7, v2

    sget-object v8, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    iput-object v8, v5, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    aget-object v5, v7, v2

    sget-object v8, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/estrongs/android/pop/view/utils/v;->m:[Lcom/estrongs/android/util/x;

    iput-object v8, v5, Lcom/estrongs/android/pop/view/utils/v;->m:[Lcom/estrongs/android/util/x;

    aget-object v5, v7, v2

    sget-object v8, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v8, v8, v1

    iget-boolean v8, v8, Lcom/estrongs/android/pop/view/utils/v;->p:Z

    iput-boolean v8, v5, Lcom/estrongs/android/pop/view/utils/v;->p:Z

    aget-object v5, v7, v2

    sget-object v8, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/estrongs/android/pop/view/utils/v;->q:I

    iput v8, v5, Lcom/estrongs/android/pop/view/utils/v;->q:I

    aget-object v5, v7, v2

    sget-object v8, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/x;

    iput-object v8, v5, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/x;

    aget-object v5, v7, v2

    sget-object v8, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v8, v8, v1

    iget-wide v8, v8, Lcom/estrongs/android/pop/view/utils/v;->t:J

    iput-wide v8, v5, Lcom/estrongs/android/pop/view/utils/v;->t:J

    aget-object v5, v7, v2

    sget-object v8, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v1, v8, v1

    iget-wide v8, v1, Lcom/estrongs/android/pop/view/utils/v;->u:J

    iput-wide v8, v5, Lcom/estrongs/android/pop/view/utils/v;->u:J

    :cond_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    invoke-direct {p0, v7}, Lcom/estrongs/android/pop/view/utils/n;->a([Lcom/estrongs/android/pop/view/utils/v;)V

    :cond_c
    array-length v1, v7

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/utils/n;->m:Z

    if-nez v1, :cond_d

    sput-object v7, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_e
    move v1, v3

    goto/16 :goto_0
.end method

.method private static c(Landroid/app/Activity;)V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->r:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/utils/u;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "######"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/estrongs/android/pop/view/utils/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "######"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/u;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public static c(Lcom/estrongs/android/pop/view/utils/v;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/estrongs/android/pop/view/utils/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, p1

    :cond_0
    return-void
.end method

.method private f(Lcom/estrongs/android/pop/view/utils/v;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p1, Lcom/estrongs/android/pop/view/utils/v;->v:I

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/utils/n;->b(Lcom/estrongs/android/pop/view/utils/v;)I

    move-result v0

    iput v0, p1, Lcom/estrongs/android/pop/view/utils/v;->v:I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/utils/n;->b(Lcom/estrongs/android/pop/view/utils/v;)I

    move-result v0

    iput v0, p1, Lcom/estrongs/android/pop/view/utils/v;->v:I

    iget v0, p1, Lcom/estrongs/android/pop/view/utils/v;->v:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput v6, p1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/estrongs/android/pop/view/utils/v;->v:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget v0, p1, Lcom/estrongs/android/pop/view/utils/v;->v:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput v6, p1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    goto :goto_0

    :pswitch_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput v6, p1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/utils/n;->b(Lcom/estrongs/android/pop/view/utils/v;)I

    move-result v0

    iput v0, p1, Lcom/estrongs/android/pop/view/utils/v;->v:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private declared-synchronized h()V
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v0, v0, v1

    iget-object v3, v0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/estrongs/android/pop/view/utils/v;->q:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v4, v4, v1

    iget-wide v4, v4, Lcom/estrongs/android/pop/view/utils/v;->t:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    const-string v0, "0"

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "######"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "######"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)J
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/android/pop/view/utils/n;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->G()J

    move-result-wide v0

    :goto_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/view/utils/n;->a:J

    goto :goto_0
.end method

.method public a(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/n;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/n;->p:Landroid/os/Handler;

    iput-object p1, p0, Lcom/estrongs/android/pop/view/utils/n;->p:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/utils/n;->d()[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->a([Lcom/estrongs/android/pop/view/utils/v;I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/utils/n;->g()V

    return-void
.end method

.method public a(Landroid/os/Message;J)V
    .locals 4

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/n;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/n;->p:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/n;->p:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/n;->p:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/estrongs/android/pop/view/utils/v;I)V
    .locals 2

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/x;

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    iput p2, p1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/x;

    invoke-virtual {v0}, Lcom/estrongs/android/util/x;->b()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/x;

    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/estrongs/android/pop/view/utils/v;->u:J

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/utils/n;->h()V

    return-void
.end method

.method public a(Z)V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/estrongs/android/pop/esclasses/c;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/estrongs/android/pop/esclasses/c;->a:Ljava/lang/String;

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/esclasses/c;->a:Ljava/lang/String;

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string v0, "zh"

    :cond_2
    :goto_0
    const-string v1, "http://www.estrongs.com/channel?"

    sget v2, Lcom/estrongs/android/pop/view/utils/n;->c:I

    if-nez v2, :cond_6

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->d:Ljava/lang/String;

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&s=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Lcom/estrongs/android/util/x;

    invoke-direct {v1, v0}, Lcom/estrongs/android/util/x;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/pop/view/utils/o;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/utils/o;-><init>(Lcom/estrongs/android/pop/view/utils/n;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/x;->a(Lcom/estrongs/android/util/aa;)V

    invoke-virtual {v1, v1}, Lcom/estrongs/android/util/x;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/x;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/util/x;->c()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/utils/n;->a:J

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    iget-wide v1, p0, Lcom/estrongs/android/pop/view/utils/n;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/q;->b(J)V

    return-void

    :cond_4
    const-string v0, "en"

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->d:Ljava/lang/String;

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/estrongs/android/pop/view/utils/n;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/estrongs/android/pop/view/utils/n;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public a([Lcom/estrongs/android/pop/view/utils/v;I)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_4

    aget-object v1, p1, v0

    iget-object v2, v1, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/x;

    if-eqz v2, :cond_3

    iget v2, v1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    :cond_1
    iput p2, v1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    :cond_2
    iget-object v2, v1, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/x;

    invoke-virtual {v2}, Lcom/estrongs/android/util/x;->b()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/x;

    :cond_3
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/estrongs/android/pop/view/utils/v;->u:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/estrongs/android/pop/view/utils/n;->h()V

    goto :goto_0
.end method

.method public b(Lcom/estrongs/android/pop/view/utils/v;)I
    .locals 5

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v3}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v3, p1, Lcom/estrongs/android/pop/view/utils/v;->x:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v1, p1, Lcom/estrongs/android/pop/view/utils/v;->x:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v0, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Z)V

    return-void
.end method

.method public c(Lcom/estrongs/android/pop/view/utils/v;)Z
    .locals 3

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/estrongs/android/util/x;

    iget-object v1, p1, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/estrongs/android/util/x;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/x;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcom/estrongs/android/util/x;->a(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/estrongs/android/util/x;->d:Ljava/lang/Object;

    new-instance v1, Lcom/estrongs/android/pop/view/utils/p;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/utils/p;-><init>(Lcom/estrongs/android/pop/view/utils/n;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/x;->a(Lcom/estrongs/android/util/aa;)V

    iput-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/x;

    iget v1, p1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/util/x;->f()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/android/util/x;->c()V

    goto :goto_1
.end method

.method public d(Lcom/estrongs/android/pop/view/utils/v;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/pop/view/utils/n;->a(Lcom/estrongs/android/pop/view/utils/v;)V

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->a:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/utils/n;->e(Lcom/estrongs/android/pop/view/utils/v;)V

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public d(Lcom/estrongs/android/pop/view/utils/v;I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/view/utils/n;->b(Lcom/estrongs/android/pop/view/utils/v;I)V

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/view/utils/n;->f(Lcom/estrongs/android/pop/view/utils/v;I)V

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    goto :goto_0
.end method

.method public d()[Lcom/estrongs/android/pop/view/utils/v;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/utils/n;->m:Z

    if-eqz v2, :cond_3

    :cond_0
    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->d:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/view/utils/n;->c(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    new-array v0, v1, [Lcom/estrongs/android/pop/view/utils/v;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    if-eqz v2, :cond_1

    :cond_3
    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/utils/n;->m:Z

    move v0, v1

    move v2, v1

    :goto_1
    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/estrongs/android/pop/view/utils/v;->w:Z

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v0, v0

    if-ne v2, v0, :cond_6

    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    goto :goto_0

    :cond_6
    new-array v2, v2, [Lcom/estrongs/android/pop/view/utils/v;

    move v0, v1

    :goto_2
    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v3, v3

    if-ge v1, v3, :cond_8

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/estrongs/android/pop/view/utils/v;->w:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v3, v3, v1

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move-object v0, v2

    goto :goto_0
.end method

.method public e(Lcom/estrongs/android/pop/view/utils/v;I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/view/utils/n;->c(Lcom/estrongs/android/pop/view/utils/v;I)V

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/view/utils/n;->g(Lcom/estrongs/android/pop/view/utils/v;I)V

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    goto :goto_0
.end method

.method public e()V
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/view/utils/n;->f(Lcom/estrongs/android/pop/view/utils/v;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lcom/estrongs/android/pop/view/utils/v;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/util/x;

    iget-object v1, p1, Lcom/estrongs/android/pop/view/utils/v;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/estrongs/android/util/x;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/estrongs/android/util/x;->d:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/icon_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/x;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcom/estrongs/android/util/x;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/estrongs/android/pop/view/utils/q;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/utils/q;-><init>(Lcom/estrongs/android/pop/view/utils/n;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/x;->a(Lcom/estrongs/android/util/aa;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/x;->c()V

    return-void
.end method

.method public f()V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/utils/n;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->a([Lcom/estrongs/android/pop/view/utils/v;I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/utils/n;->g()V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/utils/n;->m:Z

    :cond_0
    return-void
.end method

.method public f(Lcom/estrongs/android/pop/view/utils/v;I)V
    .locals 3

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->o:[Lcom/estrongs/android/util/x;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/util/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/utils/n;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/util/x;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/estrongs/android/util/x;->d:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/x;->e:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/x;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcom/estrongs/android/util/x;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/estrongs/android/pop/view/utils/r;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/utils/r;-><init>(Lcom/estrongs/android/pop/view/utils/n;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/x;->a(Lcom/estrongs/android/util/aa;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/x;->c()V

    iget-object v1, p1, Lcom/estrongs/android/pop/view/utils/v;->o:[Lcom/estrongs/android/util/x;

    aput-object v0, v1, p2

    goto :goto_0
.end method

.method public g()V
    .locals 3

    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->n:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g(Lcom/estrongs/android/pop/view/utils/v;I)V
    .locals 4

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->m:[Lcom/estrongs/android/util/x;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/util/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/utils/n;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/util/x;-><init>(Ljava/lang/String;)V

    iput-object p1, v1, Lcom/estrongs/android/util/x;->d:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/util/x;->e:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/x;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v1}, Lcom/estrongs/android/util/x;->a(Ljava/lang/Object;)V

    new-instance v0, Lcom/estrongs/android/pop/view/utils/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/utils/s;-><init>(Lcom/estrongs/android/pop/view/utils/n;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/x;->a(Lcom/estrongs/android/util/aa;)V

    invoke-virtual {v1}, Lcom/estrongs/android/util/x;->c()V

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->m:[Lcom/estrongs/android/util/x;

    aput-object v1, v0, p2

    goto :goto_0
.end method
