.class Lcom/estrongs/android/ui/a/bw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/bv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bw;->a:Lcom/estrongs/android/ui/a/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bw;->a:Lcom/estrongs/android/ui/a/bv;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "apk://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bw;->a:Lcom/estrongs/android/ui/a/bv;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "apk://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->g(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    const-string v1, "AppManager_Show"

    const-string v2, "AppManager_Show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bw;->a:Lcom/estrongs/android/ui/a/bv;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "app://user"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bw;->a:Lcom/estrongs/android/ui/a/bv;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "app://user"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bw;->a:Lcom/estrongs/android/ui/a/bv;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "app://user"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bw;->a:Lcom/estrongs/android/ui/a/bv;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "app://user"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bw;->a:Lcom/estrongs/android/ui/a/bv;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "app://system"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bw;->a:Lcom/estrongs/android/ui/a/bv;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "app://system"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bw;->a:Lcom/estrongs/android/ui/a/bv;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/y;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x5

    if-ne p2, v0, :cond_7

    new-instance v0, Lcom/estrongs/android/ui/b/ei;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bw;->a:Lcom/estrongs/android/ui/a/bv;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/ei;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ei;->show()V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/ui/a/bx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/bx;-><init>(Lcom/estrongs/android/ui/a/bw;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bw;->a:Lcom/estrongs/android/ui/a/bv;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->a(Z)V

    goto/16 :goto_0
.end method
