.class Lcom/estrongs/android/ui/a/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/a;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/estrongs/android/ui/a/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/s;Lcom/estrongs/android/ui/a/a;II)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/bi;->a:Lcom/estrongs/android/ui/a/a;

    iput p3, p0, Lcom/estrongs/android/ui/a/bi;->b:I

    iput p4, p0, Lcom/estrongs/android/ui/a/bi;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 11

    const/4 v8, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/ui/a/bi;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/view/ar;Ljava/lang/String;)Z

    move-result v0

    iget-object v3, p0, Lcom/estrongs/android/ui/a/bi;->a:Lcom/estrongs/android/ui/a/a;

    iget-boolean v3, v3, Lcom/estrongs/android/ui/a/a;->e:Z

    if-nez v3, :cond_5

    move v0, v1

    move v3, v1

    :goto_0
    new-instance v4, Lcom/estrongs/android/ui/b/aq;

    iget-object v5, p0, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v5}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/estrongs/android/ui/a/bi;->a:Lcom/estrongs/android/ui/a/a;

    iget-object v5, v5, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/b/aq;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v7

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v4}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    const v6, 0x7f0b0373

    invoke-virtual {v4, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    iget-object v4, p0, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v4}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    const v6, 0x7f0b0374

    invoke-virtual {v4, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    iget-object v4, p0, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v4}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    const v6, 0x7f0b0016

    invoke-virtual {v4, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v9

    iget-object v4, p0, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v4}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    const v6, 0x7f0b00f4

    invoke-virtual {v4, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v10

    iget-object v4, p0, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v4}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    const v6, 0x7f0b025c

    invoke-virtual {v4, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v8

    new-array v6, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v4}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    const v8, 0x7f0b0373

    invoke-virtual {v4, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v1

    iget-object v4, p0, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v4}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    const v8, 0x7f0b0016

    invoke-virtual {v4, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    iget-object v4, p0, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v4}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    const v8, 0x7f0b00f4

    invoke-virtual {v4, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v9

    iget-object v4, p0, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v4}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    const v8, 0x7f0b025c

    invoke-virtual {v4, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v10

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    move-object v4, v5

    :goto_1
    new-instance v5, Lcom/estrongs/android/ui/a/bj;

    invoke-direct {v5, p0, v3, v0}, Lcom/estrongs/android/ui/a/bj;-><init>(Lcom/estrongs/android/ui/a/bi;ZZ)V

    invoke-virtual {v7, v4, v1, v5}, Lcom/estrongs/android/ui/b/ag;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v7, v1}, Lcom/estrongs/android/ui/b/ag;->setSelectable(Z)V

    invoke-virtual {v7}, Lcom/estrongs/android/ui/b/ag;->show()V

    return v2

    :cond_0
    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    array-length v4, v5

    add-int/lit8 v4, v4, -0x1

    new-array v6, v4, [Ljava/lang/String;

    move v4, v2

    :goto_2
    array-length v8, v5

    if-ge v4, v8, :cond_1

    add-int/lit8 v8, v4, -0x1

    aget-object v9, v5, v4

    aput-object v9, v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move-object v4, v6

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    move-object v4, v6

    goto :goto_1

    :cond_3
    array-length v4, v6

    add-int/lit8 v4, v4, -0x1

    new-array v5, v4, [Ljava/lang/String;

    move v4, v2

    :goto_3
    array-length v8, v6

    if-ge v4, v8, :cond_4

    add-int/lit8 v8, v4, -0x1

    aget-object v9, v6, v4

    aput-object v9, v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move-object v4, v5

    goto :goto_1

    :cond_5
    move v3, v0

    move v0, v2

    goto/16 :goto_0
.end method
