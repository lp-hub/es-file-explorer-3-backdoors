.class Lcom/estrongs/android/ui/e/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->a(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/view/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/view/az;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i()V

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->I(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->J(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->b(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/t;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->b(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/t;->a()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    new-instance v3, Lcom/estrongs/android/ui/b/t;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v4, v4, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/b/t;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/e/w;->a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/b/t;)Lcom/estrongs/android/ui/b/t;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->b(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/t;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newItemClickListener.onMenuItemClick() catchs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aV(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->c(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/cq;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->c(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/cq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/cq;->a()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    new-instance v3, Lcom/estrongs/android/ui/b/cq;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v4, v4, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/b/cq;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/e/w;->a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/b/cq;)Lcom/estrongs/android/ui/b/cq;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->c(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/cq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/cq;->b()V

    goto/16 :goto_0

    :cond_6
    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aD(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->d(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/w;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->d(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/w;->a()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    new-instance v3, Lcom/estrongs/android/ui/b/w;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v4, v4, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/b/w;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/e/w;->a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/b/w;)Lcom/estrongs/android/ui/b/w;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->d(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/w;->b()V

    goto/16 :goto_0

    :cond_8
    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->as(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    const v3, 0x7f0b01be

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_9
    new-instance v2, Lcom/estrongs/android/ui/b/ag;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v3, v3, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v2, v3}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/b/ag;->setTitle(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/b/ag;->setSelectable(Z)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v5, v5, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v6, 0x7f0b005d

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v5, v5, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v6, 0x7f0b005e

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, -0x1

    new-instance v5, Lcom/estrongs/android/ui/e/bg;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/e/bg;-><init>(Lcom/estrongs/android/ui/e/bf;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/estrongs/android/ui/b/ag;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/ag;->show()V

    goto/16 :goto_0

    :cond_a
    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_b
    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->e(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/ag;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->e(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/ag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/ag;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_c
    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    new-instance v3, Lcom/estrongs/android/ui/b/ag;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v4, v4, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/e/w;->a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/b/ag;)Lcom/estrongs/android/ui/b/ag;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->e(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/ag;

    move-result-object v2

    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/b/ag;->setTitle(I)V

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->e(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/ag;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/b/ag;->setSelectable(Z)V

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->e(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/ag;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v5, v5, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v6, 0x7f0b005d

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v5, v5, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v6, 0x7f0b005e

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, -0x1

    new-instance v5, Lcom/estrongs/android/ui/e/bh;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/e/bh;-><init>(Lcom/estrongs/android/ui/e/bf;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/estrongs/android/ui/b/ag;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->e(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/ag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/ag;->show()V

    goto/16 :goto_0

    :cond_d
    invoke-static {v2}, Lcom/estrongs/android/util/ak;->r(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Lcom/estrongs/android/ui/c/l;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v3, v3, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v2, v3}, Lcom/estrongs/android/ui/c/l;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/c/l;->show()V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f0b01be

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f0b01be

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
