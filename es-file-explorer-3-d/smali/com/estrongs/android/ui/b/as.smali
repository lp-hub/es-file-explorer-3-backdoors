.class public Lcom/estrongs/android/ui/b/as;
.super Lcom/estrongs/android/ui/b/ag;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/estrongs/fs/g;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/fs/g;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    const v0, 0x7f03001e

    invoke-super {p0, v0}, Lcom/estrongs/android/ui/b/ag;->setContentView(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/as;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/as;->mContentView:Landroid/view/View;

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/as;->mContentView:Landroid/view/View;

    const v2, 0x7f0800e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/as;->mContentView:Landroid/view/View;

    const v3, 0x7f0800ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/ui/b/as;->mContentView:Landroid/view/View;

    const v4, 0x7f0800eb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/estrongs/android/ui/b/as;->mContentView:Landroid/view/View;

    const v5, 0x7f0800e8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/estrongs/android/ui/b/as;->mContentView:Landroid/view/View;

    const v5, 0x7f0800e9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/estrongs/android/ui/b/as;->mContentView:Landroid/view/View;

    const v5, 0x7f0800ec

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v7, v5

    move-object v8, v6

    :goto_0
    if-ge v7, v10, :cond_2

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/estrongs/fs/g;

    invoke-interface {v5}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v8, :cond_0

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/estrongs/fs/g;

    invoke-interface {v5}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_0
    if-nez v6, :cond_6

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/estrongs/fs/g;

    invoke-interface {v5}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v7, 0x1

    if-eq v5, v10, :cond_1

    const-string v5, " , "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    const v5, 0x7f0b000f

    invoke-virtual {p0, v5}, Lcom/estrongs/android/ui/b/as;->setTitle(I)V

    const v5, 0x7f0b01b6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/estrongs/fs/g;

    invoke-interface {v4}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0b0314

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, ""

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const v1, 0x7f0b0312

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v8}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p3}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    const v5, 0x7f0b0011

    invoke-virtual {p0, v5}, Lcom/estrongs/android/ui/b/as;->setTitle(I)V

    const v5, 0x7f0b01b7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v4, Lcom/estrongs/android/ui/b/at;

    invoke-direct {v4, p0, p1, v1}, Lcom/estrongs/android/ui/b/at;-><init>(Lcom/estrongs/android/ui/b/as;Landroid/content/Context;Landroid/widget/TextView;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/g;

    new-instance v7, Ljava/io/File;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v6, 0x0

    aput-object v5, v1, v6

    invoke-virtual {v4, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    :cond_6
    move-object v5, v6

    goto/16 :goto_1
.end method
