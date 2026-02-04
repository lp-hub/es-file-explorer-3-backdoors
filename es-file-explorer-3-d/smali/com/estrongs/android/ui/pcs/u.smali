.class Lcom/estrongs/android/ui/pcs/u;
.super Lcom/baidu/sapi2/callback/LoginCallBack;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/d;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/pcs/d;Landroid/app/Activity;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/u;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-direct {p0, p2}, Lcom/baidu/sapi2/callback/LoginCallBack;-><init>(Landroid/app/Activity;)V

    iput v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:I

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:I

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/d;->k(Lcom/estrongs/android/ui/pcs/d;)Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    if-ne p0, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/d;->e(Lcom/estrongs/android/ui/pcs/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/u;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/d;->e(Lcom/estrongs/android/ui/pcs/d;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget v3, p0, Lcom/estrongs/android/ui/pcs/u;->b:I

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
