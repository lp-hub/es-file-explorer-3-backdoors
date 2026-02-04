.class public Lcom/baidu/share/message/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/share/message/c;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/share/message/b;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/baidu/share/message/b;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/baidu/share/message/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/share/message/d;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/baidu/share/message/e;

    iget-object v1, p0, Lcom/baidu/share/message/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/share/message/e;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/baidu/share/message/d;->a:Ljava/lang/String;

    const-string v2, "baidu.pcs.share.ACTION_TOKEN_SHARE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/baidu/share/message/e;->a(Lcom/baidu/share/message/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/baidu/share/message/d;->a:Ljava/lang/String;

    const-string v2, "baidu.pcs.share.ACTION_TOLEN_SYNC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/baidu/share/message/e;->b()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "baidu.intent.action.PCS_SHARE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "action"

    const-string v3, "baidu.pcs.share.ACTION_TOKEN_SYNC_REPLAY"

    invoke-direct {p0, v3}, Lcom/baidu/share/message/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sender"

    iget-object v3, p0, Lcom/baidu/share/message/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/baidu/share/message/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "receiver"

    iget-object v3, p1, Lcom/baidu/share/message/d;->b:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/baidu/share/message/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "data"

    invoke-direct {p0, v0}, Lcom/baidu/share/message/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/baidu/share/message/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
