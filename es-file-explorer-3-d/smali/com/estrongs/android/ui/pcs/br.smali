.class Lcom/estrongs/android/ui/pcs/br;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/SapiCallBack;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/bo;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/ui/pcs/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/br;->a:Lcom/estrongs/android/ui/pcs/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/ui/pcs/bo;Lcom/estrongs/android/ui/pcs/bc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/br;-><init>(Lcom/estrongs/android/ui/pcs/bo;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/br;->a:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bo;->b(Lcom/estrongs/android/ui/pcs/bo;)Lcom/estrongs/android/ui/pcs/br;

    move-result-object v0

    if-ne p0, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/br;->a:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/br;->a:Lcom/estrongs/android/ui/pcs/bo;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
