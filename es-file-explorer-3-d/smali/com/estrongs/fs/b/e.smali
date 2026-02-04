.class Lcom/estrongs/fs/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/d;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/e;->a:Lcom/estrongs/fs/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/b/e;->a:Lcom/estrongs/fs/b/d;

    iget-object v0, v0, Lcom/estrongs/fs/b/d;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/fs/b/e;->a:Lcom/estrongs/fs/b/d;

    iget-object v0, v0, Lcom/estrongs/fs/b/d;->c:Lcom/estrongs/fs/b/b;

    iget-object v0, v0, Lcom/estrongs/fs/b/b;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/fs/b/e;->a:Lcom/estrongs/fs/b/d;

    iget-object v0, v0, Lcom/estrongs/fs/b/d;->c:Lcom/estrongs/fs/b/b;

    iget-object v0, v0, Lcom/estrongs/fs/b/b;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/e;->a:Lcom/estrongs/fs/b/d;

    iget-object v0, v0, Lcom/estrongs/fs/b/d;->c:Lcom/estrongs/fs/b/b;

    iget-object v0, v0, Lcom/estrongs/fs/b/b;->a:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->M()Lcom/estrongs/android/pop/utils/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/e;->a:Lcom/estrongs/fs/b/d;

    iget-object v1, v1, Lcom/estrongs/fs/b/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/b/e;->a:Lcom/estrongs/fs/b/d;

    iget-object v2, v2, Lcom/estrongs/fs/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
