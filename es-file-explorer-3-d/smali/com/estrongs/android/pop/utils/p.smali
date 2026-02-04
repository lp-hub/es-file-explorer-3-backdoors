.class Lcom/estrongs/android/pop/utils/p;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/fs/impl/b/c;

.field final synthetic d:Lcom/estrongs/android/pop/utils/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/o;Ljava/util/List;Ljava/lang/String;Lcom/estrongs/fs/impl/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/p;->d:Lcom/estrongs/android/pop/utils/o;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/p;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/p;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/utils/p;->c:Lcom/estrongs/fs/impl/b/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/p;->d:Lcom/estrongs/android/pop/utils/o;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/o;->b:Lcom/estrongs/android/pop/utils/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/p;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/p;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/utils/c;->a(Lcom/estrongs/android/pop/utils/c;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/fs/b/o;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/p;->d:Lcom/estrongs/android/pop/utils/o;

    iget-object v1, v1, Lcom/estrongs/android/pop/utils/o;->b:Lcom/estrongs/android/pop/utils/c;

    iget-object v1, v1, Lcom/estrongs/android/pop/utils/c;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/p;->c:Lcom/estrongs/fs/impl/b/c;

    invoke-direct {v0, v1, v2, v4}, Lcom/estrongs/fs/b/o;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/g;Z)V

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/b/o;->execute(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/p;->b:Ljava/lang/String;

    const-string v1, "rw"

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/local/h;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/estrongs/fs/b/o;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/p;->d:Lcom/estrongs/android/pop/utils/o;

    iget-object v2, v2, Lcom/estrongs/android/pop/utils/o;->b:Lcom/estrongs/android/pop/utils/c;

    iget-object v2, v2, Lcom/estrongs/android/pop/utils/c;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/utils/p;->c:Lcom/estrongs/fs/impl/b/c;

    invoke-direct {v1, v2, v3, v4}, Lcom/estrongs/fs/b/o;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/g;Z)V

    invoke-virtual {v1, v4}, Lcom/estrongs/fs/b/o;->execute(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/p;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
