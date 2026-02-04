.class Lcom/estrongs/android/pop/utils/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/impl/b/f;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/estrongs/android/pop/utils/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/c;Lcom/estrongs/fs/impl/b/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/j;->d:Lcom/estrongs/android/pop/utils/c;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/j;->a:Lcom/estrongs/fs/impl/b/f;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/j;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/utils/j;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/j;->d:Lcom/estrongs/android/pop/utils/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/c;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/j;->a:Lcom/estrongs/fs/impl/b/f;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/b/f;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/utils/AppRunner;->r(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/j;->d:Lcom/estrongs/android/pop/utils/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/j;->d:Lcom/estrongs/android/pop/utils/c;

    iget-object v1, v1, Lcom/estrongs/android/pop/utils/c;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/j;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/utils/j;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/pop/utils/c;->a(Lcom/estrongs/android/pop/utils/c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/j;->d:Lcom/estrongs/android/pop/utils/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/c;->a(Lcom/estrongs/android/pop/utils/c;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/j;->d:Lcom/estrongs/android/pop/utils/c;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/c;->a(Lcom/estrongs/android/pop/utils/c;Ljava/util/Map;)Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/j;->d:Lcom/estrongs/android/pop/utils/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/c;->a(Lcom/estrongs/android/pop/utils/c;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/j;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/j;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/j;->d:Lcom/estrongs/android/pop/utils/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/c;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/j;->a:Lcom/estrongs/fs/impl/b/f;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/b/f;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/utils/AppRunner;->r(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
