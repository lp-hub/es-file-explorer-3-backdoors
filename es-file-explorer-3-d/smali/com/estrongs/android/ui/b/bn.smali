.class Lcom/estrongs/android/ui/b/bn;
.super Lcom/estrongs/android/ui/b/dm;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/bk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/bk;Ljava/util/List;Lcom/estrongs/fs/d;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/bn;->a:Lcom/estrongs/android/ui/b/bk;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/ui/b/dm;-><init>(Ljava/util/List;Lcom/estrongs/fs/d;Z)V

    return-void
.end method


# virtual methods
.method public task()Z
    .locals 3

    invoke-super {p0}, Lcom/estrongs/android/ui/b/dm;->task()Z

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/bn;->a:Lcom/estrongs/android/ui/b/bk;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/bk;->b(Lcom/estrongs/android/ui/b/bk;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/bn;->a:Lcom/estrongs/android/ui/b/bk;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/bk;->c(Lcom/estrongs/android/ui/b/bk;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/b/bn;->a:Lcom/estrongs/android/ui/b/bk;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/bn;->a:Lcom/estrongs/android/ui/b/bk;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/bk;->d(Lcom/estrongs/android/ui/b/bk;)Lcom/estrongs/android/ui/b/dm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/dm;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/b/bk;->a(Lcom/estrongs/android/ui/b/bk;Ljava/util/List;)V

    goto :goto_0
.end method
