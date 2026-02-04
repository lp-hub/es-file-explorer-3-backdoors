.class Lcom/estrongs/android/ui/a/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/ui/a/a;

.field final synthetic d:Lcom/estrongs/android/ui/a/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/s;IILcom/estrongs/android/ui/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bl;->d:Lcom/estrongs/android/ui/a/s;

    iput p2, p0, Lcom/estrongs/android/ui/a/bl;->a:I

    iput p3, p0, Lcom/estrongs/android/ui/a/bl;->b:I

    iput-object p4, p0, Lcom/estrongs/android/ui/a/bl;->c:Lcom/estrongs/android/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    const v7, 0x7f0b0374

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lcom/estrongs/android/ui/a/bl;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/a/bl;->b:I

    if-ne v0, v3, :cond_0

    :goto_0
    return v6

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bl;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bl;->c:Lcom/estrongs/android/ui/a/a;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bl;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/a/bl;->c:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/view/ar;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v0, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/a/bl;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v3}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    const v4, 0x7f0b0373

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    iget-object v3, p0, Lcom/estrongs/android/ui/a/bl;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v3}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    :goto_1
    new-instance v3, Lcom/estrongs/android/ui/a/bm;

    invoke-direct {v3, p0, v2}, Lcom/estrongs/android/ui/a/bm;-><init>(Lcom/estrongs/android/ui/a/bl;Z)V

    invoke-virtual {v1, v0, v5, v3}, Lcom/estrongs/android/ui/b/ag;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/b/ag;->setSelectable(Z)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/ag;->show()V

    goto :goto_0

    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/a/bl;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v3}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    goto :goto_1
.end method
