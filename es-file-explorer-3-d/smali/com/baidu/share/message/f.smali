.class Lcom/baidu/share/message/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/share/message/ShareReceiver;

.field private final synthetic b:Lcom/baidu/share/message/d;


# direct methods
.method constructor <init>(Lcom/baidu/share/message/ShareReceiver;Lcom/baidu/share/message/d;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/share/message/f;->a:Lcom/baidu/share/message/ShareReceiver;

    iput-object p2, p0, Lcom/baidu/share/message/f;->b:Lcom/baidu/share/message/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Lcom/baidu/share/message/ShareReceiver;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/share/message/ShareReceiver;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/share/message/c;

    iget-object v2, p0, Lcom/baidu/share/message/f;->b:Lcom/baidu/share/message/d;

    invoke-interface {v0, v2}, Lcom/baidu/share/message/c;->a(Lcom/baidu/share/message/d;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
