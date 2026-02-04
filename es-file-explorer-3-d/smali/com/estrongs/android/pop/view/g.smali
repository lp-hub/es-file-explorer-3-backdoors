.class Lcom/estrongs/android/pop/view/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/g;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/g;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/g;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/estrongs/android/pop/a;->a:Ljava/lang/String;

    const-string v3, ".thumbnails"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/estrongs/android/pop/a;->a:Ljava/lang/String;

    const-string v3, ".apps"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/estrongs/fs/c/d;->a([Ljava/io/File;)Z

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/g;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/g;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/g;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
