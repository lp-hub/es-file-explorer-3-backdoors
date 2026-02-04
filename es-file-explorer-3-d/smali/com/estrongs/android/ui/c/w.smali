.class Lcom/estrongs/android/ui/c/w;
.super Lcom/estrongs/android/widget/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/estrongs/android/widget/c",
        "<",
        "Lcom/estrongs/fs/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/w;->a:Lcom/estrongs/android/ui/c/u;

    invoke-direct {p0}, Lcom/estrongs/android/widget/c;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/w;->a:Lcom/estrongs/android/ui/c/u;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/c/u;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    const-string v1, "task"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a;

    if-nez p2, :cond_1

    new-instance v1, Lcom/estrongs/android/ui/c/f;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/w;->a:Lcom/estrongs/android/ui/c/u;

    invoke-static {v2}, Lcom/estrongs/android/ui/c/u;->c(Lcom/estrongs/android/ui/c/u;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/c/f;-><init>(Landroid/content/Context;Lcom/estrongs/a/a;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/c/f;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/w;->a:Lcom/estrongs/android/ui/c/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/u;->d(Lcom/estrongs/android/ui/c/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/w;->a:Lcom/estrongs/android/ui/c/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/u;->e(Lcom/estrongs/android/ui/c/u;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/c/f;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/w;->a:Lcom/estrongs/android/ui/c/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/u;->f(Lcom/estrongs/android/ui/c/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/w;->a:Lcom/estrongs/android/ui/c/u;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/c/u;->h(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/c/f;->a(Z)V

    :cond_0
    invoke-virtual {v1}, Lcom/estrongs/android/ui/c/f;->b()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/c/f;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/c/f;->c()V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/c/f;->a(Lcom/estrongs/a/a;)V

    goto :goto_0
.end method
