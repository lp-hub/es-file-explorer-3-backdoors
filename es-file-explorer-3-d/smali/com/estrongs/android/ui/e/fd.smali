.class Lcom/estrongs/android/ui/e/fd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/er;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/er;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/fd;->a:Lcom/estrongs/android/ui/e/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fd;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/af;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/af;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fd;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    const v1, 0x7f0b03c8

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/fd;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r()V

    return v3

    :cond_2
    new-instance v1, Lcom/estrongs/android/ui/b/df;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/fd;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/b/df;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/g;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/df;->a()V

    goto :goto_0
.end method
