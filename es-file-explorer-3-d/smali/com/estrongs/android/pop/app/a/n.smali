.class Lcom/estrongs/android/pop/app/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/n;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/n;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t()Lcom/estrongs/android/pop/app/a/af;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/af;->b:Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/pop/app/a/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/o;-><init>(Lcom/estrongs/android/pop/app/a/n;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/n;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-static {v0, v2, v4, v1}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/a/a/k;Lcom/estrongs/android/pop/utils/br;)Z

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/n;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/a;->d()V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/ak;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/n;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-static {v0, v2, v4, v1}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/a/a/k;Lcom/estrongs/android/pop/utils/br;)Z

    goto :goto_0
.end method
