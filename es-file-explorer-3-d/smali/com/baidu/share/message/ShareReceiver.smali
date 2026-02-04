.class public Lcom/baidu/share/message/ShareReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/share/message/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/share/message/ShareReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/share/message/ShareReceiver;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/share/message/ShareReceiver;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)Lcom/baidu/share/message/d;
    .locals 11

    const/4 v7, 0x0

    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/share/message/ShareReceiver;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/share/message/ShareReceiver;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/share/message/ShareReceiver;->a:Ljava/lang/String;

    const-string v1, "parseShareMessage invalid action"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const-string v0, "sender"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/share/message/ShareReceiver;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/baidu/share/message/ShareReceiver;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/baidu/share/message/ShareReceiver;->a:Ljava/lang/String;

    const-string v1, "parseShareMessage invalid sender"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "receiver"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v3}, Lcom/baidu/share/message/ShareReceiver;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-gtz v0, :cond_4

    sget-object v0, Lcom/baidu/share/message/ShareReceiver;->a:Ljava/lang/String;

    const-string v1, "parseShareMessage invalid timestamp"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/baidu/share/message/ShareReceiver;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-direct {p0, v0}, Lcom/baidu/share/message/ShareReceiver;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_8

    :goto_2
    const-string v0, "baidu.pcs.share.ACTION_TOKEN_SYNC_REPLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "baidu.pcs.share.ACTION_TOKEN_SHARE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    if-eqz v6, :cond_0

    :cond_7
    new-instance v0, Lcom/baidu/share/message/d;

    invoke-direct/range {v0 .. v6}, Lcom/baidu/share/message/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    move-object v7, v0

    goto :goto_0

    :cond_8
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    sget-object v0, Lcom/baidu/share/message/ShareReceiver;->a:Ljava/lang/String;

    const-string v1, "parseShareMessage invalid data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    move-object v6, v7

    goto :goto_2
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/baidu/share/message/ShareReceiver;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(Lcom/baidu/share/message/c;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/baidu/share/message/ShareReceiver;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/share/message/ShareReceiver;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "baidu.pcs.share.ACTION_TOLEN_SYNC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "baidu.pcs.share.ACTION_TOKEN_SYNC_REPLAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "baidu.pcs.share.ACTION_TOKEN_SHARE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/baidu/share/message/c;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/baidu/share/message/ShareReceiver;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/share/message/ShareReceiver;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/baidu/share/message/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    const-string v1, "baidu.intent.action.PCS_SHARE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/baidu/share/message/ShareReceiver;->a(Landroid/os/Bundle;)Lcom/baidu/share/message/d;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/baidu/share/message/ShareReceiver;->a:Ljava/lang/String;

    const-string v1, "parseShareMessage error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/baidu/share/message/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/baidu/share/message/ShareReceiver;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/baidu/share/message/b;

    invoke-direct {v1, p1}, Lcom/baidu/share/message/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/baidu/share/message/b;->a(Lcom/baidu/share/message/d;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/baidu/share/message/f;

    invoke-direct {v2, p0, v0}, Lcom/baidu/share/message/f;-><init>(Lcom/baidu/share/message/ShareReceiver;Lcom/baidu/share/message/d;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
