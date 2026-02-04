.class public Lcom/baidu/share/message/token/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/share/message/c;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/baidu/share/message/token/a/a;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/baidu/share/message/token/ShareTokenListener;

.field private e:Lcom/baidu/share/message/e;

.field private f:Lcom/baidu/share/message/d;

.field private g:Ljava/util/HashMap;
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

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/share/message/token/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/share/message/token/a/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/share/message/token/a/a;->b:Lcom/baidu/share/message/token/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/share/message/token/a/a;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/baidu/share/message/token/a/a;->d:Lcom/baidu/share/message/token/ShareTokenListener;

    iput-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    iput-object v0, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    iput-object v0, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    iput v1, p0, Lcom/baidu/share/message/token/a/a;->h:I

    iput-boolean v1, p0, Lcom/baidu/share/message/token/a/a;->i:Z

    return-void
.end method

.method public static final a()Lcom/baidu/share/message/token/a/a;
    .locals 1

    sget-object v0, Lcom/baidu/share/message/token/a/a;->b:Lcom/baidu/share/message/token/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/share/message/token/a/a;

    invoke-direct {v0}, Lcom/baidu/share/message/token/a/a;-><init>()V

    sput-object v0, Lcom/baidu/share/message/token/a/a;->b:Lcom/baidu/share/message/token/a/a;

    :cond_0
    sget-object v0, Lcom/baidu/share/message/token/a/a;->b:Lcom/baidu/share/message/token/a/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/baidu/share/message/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "baidu.intent.action.PCS_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "action"

    invoke-direct {p0, p1}, Lcom/baidu/share/message/token/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "sender"

    invoke-direct {p0, p2}, Lcom/baidu/share/message/token/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string v1, "receiver"

    invoke-direct {p0, p3}, Lcom/baidu/share/message/token/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p6, :cond_3

    const-string v1, "data"

    invoke-direct {p0, p6}, Lcom/baidu/share/message/token/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lcom/baidu/share/message/token/a/a;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v1, "baidu.pcs.share.ACTION_TOKEN_SHARE"

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/share/message/token/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private f()V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/share/message/token/a/a;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "attack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/share/message/token/a/a;->i:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private g()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/share/message/token/a/a;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "attack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/share/message/token/a/a;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "attack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/share/message/token/a/a;->d()V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(J)Lcom/baidu/share/message/token/ShareToken;
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    iget-object v1, v1, Lcom/baidu/share/message/d;->e:Ljava/util/HashMap;

    :goto_0
    if-eqz v1, :cond_3

    new-instance v2, Lcom/baidu/share/message/token/ShareToken;

    const-string v0, "token"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/baidu/share/message/token/ShareToken;-><init>(Ljava/lang/String;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    invoke-virtual {v1}, Lcom/baidu/share/message/e;->a()Lcom/baidu/share/message/d;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v1, v2, Lcom/baidu/share/message/d;->e:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    new-instance v2, Lcom/baidu/share/message/token/ShareToken;

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    const-string v3, "timestamp"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/baidu/share/message/token/ShareToken;-><init>(Ljava/lang/String;JI)V

    move-object v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/baidu/share/message/token/a/a;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    new-instance v2, Lcom/baidu/share/message/token/ShareToken;

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    const-string v3, "timestamp"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/baidu/share/message/token/ShareToken;-><init>(Ljava/lang/String;JI)V

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    iget-object v1, v0, Lcom/baidu/share/message/d;->e:Ljava/util/HashMap;

    new-instance v2, Lcom/baidu/share/message/token/ShareToken;

    const-string v0, "token"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/baidu/share/message/token/ShareToken;-><init>(Ljava/lang/String;JI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v2

    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/share/message/token/a/a;->c:Landroid/content/Context;

    new-instance v0, Lcom/baidu/share/message/e;

    iget-object v1, p0, Lcom/baidu/share/message/token/a/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/share/message/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    invoke-virtual {v0}, Lcom/baidu/share/message/e;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/baidu/share/message/ShareReceiver;->a(Lcom/baidu/share/message/c;)V

    invoke-direct {p0}, Lcom/baidu/share/message/token/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/share/message/token/a/a;->h()V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/baidu/share/message/d;)V
    .locals 7

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    invoke-virtual {v0}, Lcom/baidu/share/message/e;->a()Lcom/baidu/share/message/d;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    :cond_2
    iget-object v0, p1, Lcom/baidu/share/message/d;->a:Ljava/lang/String;

    const-string v1, "baidu.pcs.share.ACTION_TOKEN_SHARE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v1, p1, Lcom/baidu/share/message/d;->e:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    const-string v2, "token"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    if-eqz v0, :cond_4

    const-string v0, "_Normalized_Token_"

    const-string v2, "token"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    iget-object v2, v0, Lcom/baidu/share/message/d;->e:Ljava/util/HashMap;

    const-string v0, "token"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "token"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "timestamp"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    :cond_4
    iput-object p1, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    invoke-virtual {v0, p1}, Lcom/baidu/share/message/e;->a(Lcom/baidu/share/message/d;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    :try_start_2
    iget-boolean v0, p0, Lcom/baidu/share/message/token/a/a;->i:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/baidu/share/message/token/a/a;->a:Ljava/lang/String;

    const-string v1, "handle new message with isAttaced"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->d:Lcom/baidu/share/message/token/ShareTokenListener;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/baidu/share/message/token/a/a;->d:Lcom/baidu/share/message/token/ShareTokenListener;

    new-instance v3, Lcom/baidu/share/message/token/ShareToken;

    const-string v0, "token"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "timestamp"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v1, 0x0

    invoke-direct {v3, v0, v4, v5, v1}, Lcom/baidu/share/message/token/ShareToken;-><init>(Ljava/lang/String;JI)V

    invoke-interface {v2, v3}, Lcom/baidu/share/message/token/ShareTokenListener;->onShareToken(Lcom/baidu/share/message/token/ShareToken;)V

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p1, Lcom/baidu/share/message/d;->a:Ljava/lang/String;

    const-string v1, "baidu.pcs.share.ACTION_TOLEN_SYNC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v1, "baidu.pcs.share.ACTION_TOKEN_SYNC_REPLAY"

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/share/message/d;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/share/message/token/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p1, Lcom/baidu/share/message/d;->a:Ljava/lang/String;

    const-string v1, "baidu.pcs.share.ACTION_TOKEN_SYNC_REPLAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/share/message/d;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/share/message/token/a/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/share/message/token/a/a;->i:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/baidu/share/message/token/a/a;->a:Ljava/lang/String;

    const-string v1, "handle ACTION_TOKEN_SYNC_RELAY message with isAttaced"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget-object v1, p1, Lcom/baidu/share/message/d;->e:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    const-string v2, "token"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_b
    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    if-eqz v0, :cond_c

    const-string v0, "_Normalized_Token_"

    const-string v2, "token"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    iget-object v2, v0, Lcom/baidu/share/message/d;->e:Ljava/util/HashMap;

    const-string v0, "token"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "token"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "timestamp"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    :cond_c
    iput-object p1, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_d

    :try_start_4
    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    invoke-virtual {v0, p1}, Lcom/baidu/share/message/e;->a(Lcom/baidu/share/message/d;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_d
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->d:Lcom/baidu/share/message/token/ShareTokenListener;

    if-eqz v0, :cond_e

    iget-object v2, p0, Lcom/baidu/share/message/token/a/a;->d:Lcom/baidu/share/message/token/ShareTokenListener;

    new-instance v3, Lcom/baidu/share/message/token/ShareToken;

    const-string v0, "token"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "timestamp"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v1, 0x0

    invoke-direct {v3, v0, v4, v5, v1}, Lcom/baidu/share/message/token/ShareToken;-><init>(Ljava/lang/String;JI)V

    invoke-interface {v2, v3}, Lcom/baidu/share/message/token/ShareTokenListener;->onShareToken(Lcom/baidu/share/message/token/ShareToken;)V

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized a(Lcom/baidu/share/message/token/ShareToken;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v0, p1, Lcom/baidu/share/message/token/ShareToken;->mToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/baidu/share/message/token/ShareToken;->mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p1, Lcom/baidu/share/message/token/ShareToken;->mStatus:I

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iget v0, p1, Lcom/baidu/share/message/token/ShareToken;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/share/message/token/ShareToken;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/baidu/share/message/token/ShareToken;->mTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    new-instance v0, Lcom/baidu/share/message/token/ShareTokenExpiredException;

    const-string v1, "It is a expired ShareToken"

    invoke-direct {v0, v1}, Lcom/baidu/share/message/token/ShareTokenExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lcom/baidu/share/message/token/ShareToken;->toHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    iget-object v1, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/baidu/share/message/e;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    iget-object v1, v0, Lcom/baidu/share/message/d;->e:Ljava/util/HashMap;

    const-string v0, "token"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/share/message/token/ShareToken;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    invoke-virtual {v0}, Lcom/baidu/share/message/e;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    goto :goto_0

    :cond_6
    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/baidu/share/message/token/ShareToken;->mTimestamp:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    iget-object v0, p1, Lcom/baidu/share/message/token/ShareToken;->mToken:Ljava/lang/String;

    const-string v1, "_Normalized_Token_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    invoke-virtual {v0}, Lcom/baidu/share/message/e;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    :cond_8
    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/baidu/share/message/token/a/a;->a(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_9
    iget v0, p1, Lcom/baidu/share/message/token/ShareToken;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    iget-object v1, v0, Lcom/baidu/share/message/d;->e:Ljava/util/HashMap;

    const-string v0, "token"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/share/message/token/ShareToken;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/baidu/share/message/token/ShareToken;->mTimestamp:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    invoke-virtual {v0}, Lcom/baidu/share/message/e;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/share/message/token/a/a;->f:Lcom/baidu/share/message/d;

    :cond_b
    iget v0, p0, Lcom/baidu/share/message/token/a/a;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/baidu/share/message/token/a/a;->h:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    invoke-direct {p0}, Lcom/baidu/share/message/token/a/a;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public a(Lcom/baidu/share/message/token/ShareTokenListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/share/message/token/a/a;->d:Lcom/baidu/share/message/token/ShareTokenListener;

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {p0}, Lcom/baidu/share/message/ShareReceiver;->b(Lcom/baidu/share/message/c;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/share/message/token/a/a;->b:Lcom/baidu/share/message/token/a/a;

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    invoke-virtual {v0}, Lcom/baidu/share/message/e;->c()V

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    invoke-virtual {v0}, Lcom/baidu/share/message/e;->d()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->e:Lcom/baidu/share/message/e;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    const-string v1, "baidu.pcs.share.ACTION_TOLEN_SYNC"

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/baidu/share/message/token/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized e()Lcom/baidu/share/message/token/ShareToken;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/baidu/share/message/token/ShareToken;

    iget-object v0, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/share/message/token/a/a;->g:Ljava/util/HashMap;

    const-string v3, "timestamp"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/baidu/share/message/token/ShareToken;-><init>(Ljava/lang/String;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
