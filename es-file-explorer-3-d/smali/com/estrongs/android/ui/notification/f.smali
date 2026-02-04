.class Lcom/estrongs/android/ui/notification/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a;

.field final synthetic b:Lcom/estrongs/android/ui/notification/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/notification/e;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    iput-object p2, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v7

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/notification/c;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/c;->e()V

    :cond_1
    :goto_1
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/q;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/i;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/o;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/at;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/g;

    if-eqz v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->ab()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    invoke-static {}, Lcom/estrongs/android/util/ak;->c()Ljava/lang/String;

    const-string v4, ""

    const-string v3, ""

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/i;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/i;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/i;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/i;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/i;->c()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/i;

    iget-object v0, v0, Lcom/estrongs/fs/b/i;->n:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/i;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/i;->c()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v2, v1

    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/y;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0b0355

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v3}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v4}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0b0085

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/notification/c;->b(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v3}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/notification/c;->c(Ljava/lang/CharSequence;)V

    move v3, v2

    move-object v2, v5

    :goto_4
    iget-object v4, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v4}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v4

    const v5, 0x7f02014f

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/notification/c;->a(I)V

    iget-object v4, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v4}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/ui/notification/c;->a()V

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "title"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "openfileOrFolder"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "pathIsDir"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/c;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/android/ui/notification/c;->a(Landroid/content/Intent;Z)V

    goto/16 :goto_1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/i;

    iget-object v0, v0, Lcom/estrongs/fs/b/i;->n:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move v2, v6

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/i;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0b0354

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v3}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v4}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0b0086

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/notification/c;->b(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v3}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/notification/c;->c(Ljava/lang/CharSequence;)V

    move v3, v2

    move-object v2, v5

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/o;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/o;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/o;->a()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/o;->a()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_5
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/o;->a()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v0

    const v5, 0x7f0b03b2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v6, v8

    invoke-virtual {v0, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v4}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b01b3

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/notification/c;->b(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v4}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/estrongs/android/ui/notification/c;->c(Ljava/lang/CharSequence;)V

    move-object v11, v3

    move v3, v2

    move-object v2, v11

    goto/16 :goto_4

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/o;->a()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u2026"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/g;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/g;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/g;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/g;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/g;->a()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u2026"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v4}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b03cd

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v4}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b01bf

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/notification/c;->b(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v4}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/estrongs/android/ui/notification/c;->c(Ljava/lang/CharSequence;)V

    move-object v11, v3

    move v3, v2

    move-object v2, v11

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/at;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0b001d

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/at;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/at;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/at;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/at;->c()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/at;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/at;->c()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    :goto_6
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v0

    const v4, 0x7f0b0356

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v4}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0087

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/notification/c;->b(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v4}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/estrongs/android/ui/notification/c;->c(Ljava/lang/CharSequence;)V

    move-object v11, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_4

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/at;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/at;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/q;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0b001a

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/q;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/q;->b()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v3}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v3

    const v6, 0x7f0b0186

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, ""

    aput-object v10, v8, v9

    invoke-virtual {v3, v6, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "!\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v3}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v3

    const v6, 0x7f0b0307

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v0

    iget-object v6, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v6}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v6

    const v8, 0x7f0b0126

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/estrongs/android/ui/notification/c;->b(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/notification/c;->c(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v5}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_7
    move-object v1, v4

    move-object v2, v5

    move-object v11, v3

    move v3, v0

    move-object v0, v11

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object v0, v3

    move-object v1, v4

    move v3, v2

    move-object v2, v5

    goto/16 :goto_4

    :cond_e
    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/c;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_f
    move v0, v2

    goto :goto_7

    :cond_10
    move-object v0, v3

    move-object v1, v4

    move v3, v2

    move-object v2, v5

    goto/16 :goto_4
.end method
