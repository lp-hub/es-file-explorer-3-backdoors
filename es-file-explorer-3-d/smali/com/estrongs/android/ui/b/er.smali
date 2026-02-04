.class Lcom/estrongs/android/ui/b/er;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/h;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/ui/b/eq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/eq;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/er;->b:Lcom/estrongs/android/ui/b/eq;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/b/er;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/g;)Z
    .locals 2

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/er;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
