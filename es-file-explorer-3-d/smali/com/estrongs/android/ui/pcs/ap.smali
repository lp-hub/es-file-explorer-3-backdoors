.class Lcom/estrongs/android/ui/pcs/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/estrongs/android/ui/pcs/an;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/an;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ap;->e:Lcom/estrongs/android/ui/pcs/an;

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/ap;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/ui/pcs/ap;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/ui/pcs/ap;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/android/ui/pcs/ap;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ap;->e:Lcom/estrongs/android/ui/pcs/an;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/an;->c:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->c(Lcom/estrongs/android/ui/pcs/x;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ap;->e:Lcom/estrongs/android/ui/pcs/an;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/an;->b(Lcom/estrongs/android/ui/pcs/an;)Lcom/estrongs/android/ui/pcs/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ap;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/ap;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/pcs/ap;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/ui/pcs/ap;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/SapiHelper;->phoneReg(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ap;->e:Lcom/estrongs/android/ui/pcs/an;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/an;->a(Lcom/estrongs/android/ui/pcs/an;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ap;->e:Lcom/estrongs/android/ui/pcs/an;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/an;->a(Lcom/estrongs/android/ui/pcs/an;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x1fbd1

    invoke-virtual {v1, v7, v6, v2, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ap;->e:Lcom/estrongs/android/ui/pcs/an;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/an;->a(Lcom/estrongs/android/ui/pcs/an;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ap;->e:Lcom/estrongs/android/ui/pcs/an;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/an;->a(Lcom/estrongs/android/ui/pcs/an;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, -0x64

    invoke-virtual {v1, v7, v6, v2, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
