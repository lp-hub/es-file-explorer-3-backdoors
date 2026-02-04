.class Lcom/estrongs/android/ui/view/w;
.super Lcom/estrongs/android/pop/app/a/ab;


# instance fields
.field final synthetic b:Lcom/estrongs/android/ui/view/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/w;->b:Lcom/estrongs/android/ui/view/v;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/a/ab;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/pop/app/a/ad;)Z
    .locals 1

    iget-object v0, p1, Lcom/estrongs/android/pop/app/a/ad;->b:Lcom/estrongs/android/pop/app/a/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/w;->b:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/view/v;->a(Lcom/estrongs/android/pop/app/a/ad;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/estrongs/android/pop/app/a/ad;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/view/w;->a(Lcom/estrongs/android/pop/app/a/ad;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/w;->b:Lcom/estrongs/android/ui/view/v;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/v;->a(Lcom/estrongs/android/ui/view/v;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/view/x;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/view/x;-><init>(Lcom/estrongs/android/ui/view/w;Lcom/estrongs/android/pop/app/a/ad;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
