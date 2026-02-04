.class Lcom/estrongs/android/pop/utils/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/estrongs/android/pop/utils/br;

.field final synthetic d:Lcom/estrongs/android/view/ar;

.field final synthetic e:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Z

.field final synthetic i:Lcom/estrongs/a/a/k;

.field final synthetic j:Lcom/estrongs/android/pop/utils/bg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bg;ZLjava/util/List;Lcom/estrongs/android/pop/utils/br;Lcom/estrongs/android/view/ar;Lcom/estrongs/android/pop/esclasses/ESActivity;ZZZLcom/estrongs/a/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bl;->j:Lcom/estrongs/android/pop/utils/bg;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/utils/bl;->a:Z

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/bl;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/estrongs/android/pop/utils/bl;->c:Lcom/estrongs/android/pop/utils/br;

    iput-object p5, p0, Lcom/estrongs/android/pop/utils/bl;->d:Lcom/estrongs/android/view/ar;

    iput-object p6, p0, Lcom/estrongs/android/pop/utils/bl;->e:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iput-boolean p7, p0, Lcom/estrongs/android/pop/utils/bl;->f:Z

    iput-boolean p8, p0, Lcom/estrongs/android/pop/utils/bl;->g:Z

    iput-boolean p9, p0, Lcom/estrongs/android/pop/utils/bl;->h:Z

    iput-object p10, p0, Lcom/estrongs/android/pop/utils/bl;->i:Lcom/estrongs/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const v1, 0x7f0b02bc

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/utils/bl;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bl;->b:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bl;->c:Lcom/estrongs/android/pop/utils/br;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bl;->c:Lcom/estrongs/android/pop/utils/br;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/bl;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/estrongs/android/pop/utils/br;->a(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bl;->d:Lcom/estrongs/android/view/ar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bl;->d:Lcom/estrongs/android/view/ar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/view/ar;->a(Z)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bl;->e:Lcom/estrongs/android/pop/esclasses/ESActivity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bl;->e:Lcom/estrongs/android/pop/esclasses/ESActivity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A()V

    :cond_3
    iget-boolean v0, p0, Lcom/estrongs/android/pop/utils/bl;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bl;->j:Lcom/estrongs/android/pop/utils/bg;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bl;->e:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/bl;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/utils/bg;->a(Lcom/estrongs/android/pop/utils/bg;Landroid/app/Activity;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bl;->j:Lcom/estrongs/android/pop/utils/bg;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bg;->a:Lcom/estrongs/fs/b/w;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bl;->j:Lcom/estrongs/android/pop/utils/bg;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bg;->a:Lcom/estrongs/fs/b/w;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/w;->getTaskStatus()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bl;->j:Lcom/estrongs/android/pop/utils/bg;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bg;->a:Lcom/estrongs/fs/b/w;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/w;->requestStop()V

    :cond_5
    new-instance v2, Lcom/estrongs/fs/b/o;

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bl;->e:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/utils/bl;->b:Ljava/util/List;

    iget-boolean v4, p0, Lcom/estrongs/android/pop/utils/bl;->g:Z

    iget-boolean v5, p0, Lcom/estrongs/android/pop/utils/bl;->h:Z

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/estrongs/fs/b/o;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;ZZ)V

    new-instance v0, Lcom/estrongs/android/pop/g;

    iget-object v3, p0, Lcom/estrongs/android/pop/utils/bl;->e:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-direct {v0, v3}, Lcom/estrongs/android/pop/g;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/b/o;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/utils/bl;->e:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/utils/bl;->h:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/b/o;->setDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bl;->i:Lcom/estrongs/a/a/k;

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/b/o;->addTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V

    new-instance v0, Lcom/estrongs/android/pop/utils/bm;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/utils/bm;-><init>(Lcom/estrongs/android/pop/utils/bl;)V

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/b/o;->addPostListener(Lcom/estrongs/a/a/j;)V

    new-instance v0, Lcom/estrongs/android/ui/b/ew;

    iget-object v3, p0, Lcom/estrongs/android/pop/utils/bl;->e:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iget-object v4, p0, Lcom/estrongs/android/pop/utils/bl;->e:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-virtual {v4, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1, v2}, Lcom/estrongs/android/ui/b/ew;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ew;->show()V

    invoke-virtual {v2}, Lcom/estrongs/fs/b/o;->execute()V

    goto :goto_0

    :cond_6
    const v0, 0x7f0b043a

    goto :goto_1
.end method
