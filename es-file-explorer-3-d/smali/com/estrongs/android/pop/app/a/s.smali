.class Lcom/estrongs/android/pop/app/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/s;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/b/bv;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/s;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/s;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v2

    const v3, 0x7f0b03dd

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/b/bv;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/t;-><init>(Lcom/estrongs/android/pop/app/a/s;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/bv;->a(Lcom/estrongs/android/ui/b/by;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/bv;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/s;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/a;->d()V

    const/4 v0, 0x0

    return v0
.end method
