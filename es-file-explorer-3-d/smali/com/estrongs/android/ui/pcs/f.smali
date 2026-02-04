.class Lcom/estrongs/android/ui/pcs/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/estrongs/android/ui/pcs/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/f;->e:Lcom/estrongs/android/ui/pcs/d;

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/ui/pcs/f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/ui/pcs/f;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/android/ui/pcs/f;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->e:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/d;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/f;->e:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/d;->k(Lcom/estrongs/android/ui/pcs/d;)Lcom/estrongs/android/ui/pcs/u;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/f;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/pcs/f;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/ui/pcs/f;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/baidu/sapi2/Utils;->isValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v8

    :goto_0
    iget-object v6, p0, Lcom/estrongs/android/ui/pcs/f;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/baidu/sapi2/Utils;->isValid(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v8

    :goto_1
    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/sapi2/SapiHelper;->login(Lcom/baidu/sapi2/callback/LoginCallBack;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->e:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/d;->e(Lcom/estrongs/android/ui/pcs/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/f;->e:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/d;->e(Lcom/estrongs/android/ui/pcs/d;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x10

    invoke-virtual {v1, v9, v2, v3, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v5, p0, Lcom/estrongs/android/ui/pcs/f;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/estrongs/android/ui/pcs/f;->d:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->e:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/d;->e(Lcom/estrongs/android/ui/pcs/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/f;->e:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/d;->e(Lcom/estrongs/android/ui/pcs/d;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, -0x64

    invoke-virtual {v1, v9, v2, v3, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method
