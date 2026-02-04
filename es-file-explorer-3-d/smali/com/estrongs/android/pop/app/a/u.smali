.class Lcom/estrongs/android/pop/app/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/u;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    const v5, 0x7f0b025e

    const/4 v4, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/u;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/u;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v2

    const v3, 0x7f0b0260

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/u;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v2

    const v3, 0x7f0b025f

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/estrongs/android/ui/b/aq;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/u;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v3, Lcom/estrongs/android/pop/app/a/v;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/a/v;-><init>(Lcom/estrongs/android/pop/app/a/u;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/ui/b/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/b/aq;->c(Z)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/u;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/a;->d()V

    return v4
.end method
