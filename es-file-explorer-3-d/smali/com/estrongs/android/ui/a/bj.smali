.class Lcom/estrongs/android/ui/a/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/estrongs/android/ui/a/bi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/bi;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bj;->c:Lcom/estrongs/android/ui/a/bi;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/a/bj;->a:Z

    iput-boolean p3, p0, Lcom/estrongs/android/ui/a/bj;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v2, 0x2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/a/bj;->a:Z

    if-nez v0, :cond_6

    add-int/lit8 v0, p2, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bj;->c:Lcom/estrongs/android/ui/a/bi;

    iget v1, v1, Lcom/estrongs/android/ui/a/bi;->b:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bj;->c:Lcom/estrongs/android/ui/a/bi;

    iget v1, v1, Lcom/estrongs/android/ui/a/bi;->c:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bj;->c:Lcom/estrongs/android/ui/a/bi;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/s;->e(Lcom/estrongs/android/ui/a/s;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/estrongs/android/ui/a/bj;->b:Z

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bj;->c:Lcom/estrongs/android/ui/a/bi;

    iget v1, v1, Lcom/estrongs/android/ui/a/bi;->b:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bj;->c:Lcom/estrongs/android/ui/a/bi;

    iget v1, v1, Lcom/estrongs/android/ui/a/bi;->c:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bj;->c:Lcom/estrongs/android/ui/a/bi;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/s;->e(Lcom/estrongs/android/ui/a/s;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bj;->c:Lcom/estrongs/android/ui/a/bi;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bj;->c:Lcom/estrongs/android/ui/a/bi;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/bi;->a:Lcom/estrongs/android/ui/a/a;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/bj;->c:Lcom/estrongs/android/ui/a/bi;

    iget-object v2, v2, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v2}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/a/bj;->c:Lcom/estrongs/android/ui/a/bi;

    iget-object v3, v3, Lcom/estrongs/android/ui/a/bi;->a:Lcom/estrongs/android/ui/a/a;

    iget-object v3, v3, Lcom/estrongs/android/ui/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/a/bk;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/a/bk;-><init>(Lcom/estrongs/android/ui/a/bj;)V

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/ui/e/fk;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/fs/g;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    new-instance v0, Lcom/estrongs/android/ui/b/df;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bj;->c:Lcom/estrongs/android/ui/a/bi;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/a/bj;->c:Lcom/estrongs/android/ui/a/bi;

    iget-object v2, v2, Lcom/estrongs/android/ui/a/bi;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/b/df;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/df;->a()V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/.estrongs/bookmark"

    iget-object v2, p0, Lcom/estrongs/android/ui/a/bj;->c:Lcom/estrongs/android/ui/a/bi;

    iget-object v2, v2, Lcom/estrongs/android/ui/a/bi;->a:Lcom/estrongs/android/ui/a/a;

    iget-object v2, v2, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/at;->c(Ljava/io/File;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bj;->c:Lcom/estrongs/android/ui/a/bi;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/s;->notifyDataSetChanged()V

    goto/16 :goto_1

    :cond_6
    move v0, p2

    goto/16 :goto_0
.end method
