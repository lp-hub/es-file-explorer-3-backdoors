.class Lcom/estrongs/android/ui/e/em;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/ui/e/el;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/el;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/em;->b:Lcom/estrongs/android/ui/e/el;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/em;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/estrongs/android/util/ax;->c()Lcom/estrongs/android/util/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/em;->b:Lcom/estrongs/android/ui/e/el;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/el;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->W:Lcom/estrongs/android/widget/g;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/ax;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/em;->b:Lcom/estrongs/android/ui/e/el;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/el;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/em;->b:Lcom/estrongs/android/ui/e/el;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/el;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/em;->b:Lcom/estrongs/android/ui/e/el;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/el;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/em;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/em;->b:Lcom/estrongs/android/ui/e/el;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/el;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/em;->b:Lcom/estrongs/android/ui/e/el;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/el;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/em;->b:Lcom/estrongs/android/ui/e/el;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/el;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->W:Lcom/estrongs/android/widget/g;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/g;->d()Lcom/estrongs/fs/g;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/fs/g;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/em;->b:Lcom/estrongs/android/ui/e/el;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/el;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->W:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->i()V

    return-void
.end method
