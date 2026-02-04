.class Lcom/estrongs/android/pop/app/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/q;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/q;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/estrongs/android/ui/b/bv;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/q;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/a/q;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v3

    const v4, 0x7f0b03dc

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/estrongs/android/ui/b/bv;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/pop/app/a/r;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/a/r;-><init>(Lcom/estrongs/android/pop/app/a/q;Lcom/estrongs/android/pop/app/a/ag;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/bv;->a(Lcom/estrongs/android/ui/b/by;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/bv;->show()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/q;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/a;->d()V

    const/4 v0, 0x0

    return v0
.end method
