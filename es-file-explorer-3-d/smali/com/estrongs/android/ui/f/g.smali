.class Lcom/estrongs/android/ui/f/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/NaviListView;

.field final synthetic b:Lcom/estrongs/android/ui/f/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/f/f;Lcom/estrongs/android/ui/view/NaviListView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/f/g;->b:Lcom/estrongs/android/ui/f/f;

    iput-object p2, p0, Lcom/estrongs/android/ui/f/g;->a:Lcom/estrongs/android/ui/view/NaviListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x12c

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->a:Lcom/estrongs/android/ui/view/NaviListView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/NaviListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/s;

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/a/s;->a(II)Lcom/estrongs/android/ui/a/a;

    move-result-object v0

    iget-object v2, v0, Lcom/estrongs/android/ui/a/a;->d:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/f/g;->b:Lcom/estrongs/android/ui/f/f;

    invoke-static {v2}, Lcom/estrongs/android/ui/f/f;->a(Lcom/estrongs/android/ui/f/f;)Lcom/estrongs/android/widget/TranslateImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/f/g;->b:Lcom/estrongs/android/ui/f/f;

    invoke-static {v2}, Lcom/estrongs/android/ui/f/f;->a(Lcom/estrongs/android/ui/f/f;)Lcom/estrongs/android/widget/TranslateImageView;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/f/h;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/f/h;-><init>(Lcom/estrongs/android/ui/f/g;Lcom/estrongs/android/ui/a/a;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/widget/TranslateImageView;->a(Lcom/estrongs/android/widget/bn;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->b:Lcom/estrongs/android/ui/f/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/f;->a(Lcom/estrongs/android/ui/f/f;)Lcom/estrongs/android/widget/TranslateImageView;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/estrongs/android/widget/TranslateImageView;->a(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/estrongs/android/ui/a/a;->d:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    if-ne v0, v6, :cond_5

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/ui/f/g;->a:Lcom/estrongs/android/ui/view/NaviListView;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/NaviListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/f/g;->a:Lcom/estrongs/android/ui/view/NaviListView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/NaviListView;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eq v0, v2, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/f/g;->a:Lcom/estrongs/android/ui/view/NaviListView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/NaviListView;->collapseGroup(I)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->a:Lcom/estrongs/android/ui/view/NaviListView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/NaviListView;->a()V

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    if-ne v0, v4, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->a:Lcom/estrongs/android/ui/view/NaviListView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/NaviListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/s;

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/a/s;->a(II)Lcom/estrongs/android/ui/a/a;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->b:Lcom/estrongs/android/ui/f/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/f;->a(Lcom/estrongs/android/ui/f/f;)Lcom/estrongs/android/widget/TranslateImageView;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->b:Lcom/estrongs/android/ui/f/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/f;->a(Lcom/estrongs/android/ui/f/f;)Lcom/estrongs/android/widget/TranslateImageView;

    move-result-object v0

    new-instance v3, Lcom/estrongs/android/ui/f/i;

    invoke-direct {v3, p0, v2}, Lcom/estrongs/android/ui/f/i;-><init>(Lcom/estrongs/android/ui/f/g;Lcom/estrongs/android/ui/a/a;)V

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/TranslateImageView;->a(Lcom/estrongs/android/widget/bn;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->b:Lcom/estrongs/android/ui/f/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/f;->a(Lcom/estrongs/android/ui/f/f;)Lcom/estrongs/android/widget/TranslateImageView;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/estrongs/android/widget/TranslateImageView;->a(II)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->b:Lcom/estrongs/android/ui/f/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/f;->b(Lcom/estrongs/android/ui/f/f;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    :try_start_0
    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move v3, v1

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_11

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/util/ak;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/fs/d;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)V

    :goto_4
    const-string v0, "bt://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/b/a;->a()Lcom/estrongs/android/pop/app/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/a;->c()V
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/estrongs/fs/d;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->K(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->L(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->M(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->O(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(I)V
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0x65

    if-ne v0, v4, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->a:Lcom/estrongs/android/ui/view/NaviListView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/NaviListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/s;

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/a/s;->a(II)Lcom/estrongs/android/ui/a/a;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->b:Lcom/estrongs/android/ui/f/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/f;->a(Lcom/estrongs/android/ui/f/f;)Lcom/estrongs/android/widget/TranslateImageView;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->b:Lcom/estrongs/android/ui/f/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/f;->a(Lcom/estrongs/android/ui/f/f;)Lcom/estrongs/android/widget/TranslateImageView;

    move-result-object v0

    new-instance v3, Lcom/estrongs/android/ui/f/j;

    invoke-direct {v3, p0, v2}, Lcom/estrongs/android/ui/f/j;-><init>(Lcom/estrongs/android/ui/f/g;Lcom/estrongs/android/ui/a/a;)V

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/TranslateImageView;->a(Lcom/estrongs/android/widget/bn;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->b:Lcom/estrongs/android/ui/f/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/f;->a(Lcom/estrongs/android/ui/f/f;)Lcom/estrongs/android/widget/TranslateImageView;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/estrongs/android/widget/TranslateImageView;->a(II)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->b:Lcom/estrongs/android/ui/f/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/f;->b(Lcom/estrongs/android/ui/f/f;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isdir"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/util/ay;

    invoke-direct {v2}, Lcom/estrongs/android/util/ay;-><init>()V

    iput-object v1, v2, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Lcom/estrongs/android/util/ay;->b:Z

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->L()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_10
    invoke-static {v2, v1, v1}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_11
    move-object v1, v2

    goto/16 :goto_3
.end method
