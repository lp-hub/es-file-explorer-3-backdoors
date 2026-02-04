.class Lcom/estrongs/android/ui/e/ei;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/ui/e/eh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/eh;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ei;->b:Lcom/estrongs/android/ui/e/eh;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/ei;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/estrongs/android/util/ax;->c()Lcom/estrongs/android/util/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ei;->b:Lcom/estrongs/android/ui/e/eh;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/eh;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->W:Lcom/estrongs/android/widget/g;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/util/ax;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ei;->b:Lcom/estrongs/android/ui/e/eh;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/eh;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iput-boolean v3, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ei;->b:Lcom/estrongs/android/ui/e/eh;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/eh;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ei;->b:Lcom/estrongs/android/ui/e/eh;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/eh;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ei;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ei;->b:Lcom/estrongs/android/ui/e/eh;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/eh;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Landroid/app/Activity;)Lcom/estrongs/android/view/n;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ei;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ei;->b:Lcom/estrongs/android/ui/e/eh;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/eh;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p:Z

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/n;->a(Ljava/util/List;Z)Lcom/estrongs/android/view/x;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ei;->b:Lcom/estrongs/android/ui/e/eh;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/eh;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ei;->b:Lcom/estrongs/android/ui/e/eh;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/eh;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ei;->b:Lcom/estrongs/android/ui/e/eh;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/eh;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ei;->b:Lcom/estrongs/android/ui/e/eh;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/eh;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->W:Lcom/estrongs/android/widget/g;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/g;->d()Lcom/estrongs/fs/g;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/fs/g;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ei;->b:Lcom/estrongs/android/ui/e/eh;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/eh;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->W:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->i()V

    return-void
.end method
