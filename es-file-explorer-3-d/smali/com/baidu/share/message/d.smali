.class public Lcom/baidu/share/message/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/util/HashMap;
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/baidu/share/message/d;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/share/message/d;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/share/message/d;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/share/message/d;->d:J

    iput-object v2, p0, Lcom/baidu/share/message/d;->e:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/baidu/share/message/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/share/message/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/share/message/d;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/baidu/share/message/d;->d:J

    iput-object p6, p0, Lcom/baidu/share/message/d;->e:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "action"

    iget-object v2, p0, Lcom/baidu/share/message/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sender"

    iget-object v2, p0, Lcom/baidu/share/message/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "receiver"

    iget-object v2, p0, Lcom/baidu/share/message/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/baidu/share/message/d;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/share/message/d;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/baidu/share/message/d;->e:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
