.class Lcom/estrongs/android/ui/b/dr;
.super Lcom/estrongs/android/ui/b/dm;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/dn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/dn;Ljava/util/List;Lcom/estrongs/fs/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/dr;->a:Lcom/estrongs/android/ui/b/dn;

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/ui/b/dm;-><init>(Ljava/util/List;Lcom/estrongs/fs/d;)V

    return-void
.end method


# virtual methods
.method public task()Z
    .locals 3

    invoke-super {p0}, Lcom/estrongs/android/ui/b/dm;->task()Z

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dr;->a:Lcom/estrongs/android/ui/b/dn;

    iget-boolean v1, v1, Lcom/estrongs/android/ui/b/dn;->i:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dr;->a:Lcom/estrongs/android/ui/b/dn;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/dn;->h(Lcom/estrongs/android/ui/b/dn;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/b/dr;->a:Lcom/estrongs/android/ui/b/dn;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/dr;->a:Lcom/estrongs/android/ui/b/dn;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/dn;->i(Lcom/estrongs/android/ui/b/dn;)Lcom/estrongs/android/ui/b/dm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/dm;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/b/dn;->a(Lcom/estrongs/android/ui/b/dn;Ljava/util/List;)V

    goto :goto_0
.end method
