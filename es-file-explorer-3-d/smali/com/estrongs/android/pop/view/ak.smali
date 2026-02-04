.class Lcom/estrongs/android/pop/view/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/h;


# instance fields
.field a:Z

.field public b:Z

.field final synthetic c:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ak;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ak;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ak;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/g;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ak;->b:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/ak;->b:Z

    if-nez v2, :cond_2

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ak;->b:Z

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ak;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m:Lcom/estrongs/android/pop/q;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/q;->p()Z

    move-result v2

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/ak;->a:Z

    :cond_2
    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/ak;->a:Z

    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
