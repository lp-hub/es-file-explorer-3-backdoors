.class Lcom/estrongs/android/pop/app/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/j;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->j()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->e()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/j;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    const v1, 0x7f0b03df

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ag;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/j;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ag;->b()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/j;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v1

    const v5, 0x7f0b03d6

    invoke-virtual {v1, v5}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/j;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/j;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v1

    const v5, 0x7f0b03d5

    invoke-virtual {v1, v5}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v5, Lcom/estrongs/android/pop/app/a/k;

    invoke-direct {v5, p0, v3}, Lcom/estrongs/android/pop/app/a/k;-><init>(Lcom/estrongs/android/pop/app/a/j;Ljava/util/List;)V

    invoke-virtual {v0, v4, v1, v5}, Lcom/estrongs/android/ui/b/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/aq;->c(Z)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/j;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/a;->d()V

    goto :goto_0
.end method
