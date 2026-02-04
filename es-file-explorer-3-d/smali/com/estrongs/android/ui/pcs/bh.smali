.class Lcom/estrongs/android/ui/pcs/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/estrongs/android/ui/pcs/bb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/bb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/bh;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/ui/pcs/bh;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/ui/pcs/bh;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x1fbd1

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->m(Lcom/estrongs/android/ui/pcs/bb;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bh;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bh;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/bh;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/fs/impl/i/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5, v4, v4, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0461

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v4, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0491

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v4, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0487

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v4, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0234

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v4, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0465

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v4, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    const v1, 0x7a12a

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b04a6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v4, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0492

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v4, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bh;->d:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, -0xc8

    invoke-virtual {v1, v5, v4, v2, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
