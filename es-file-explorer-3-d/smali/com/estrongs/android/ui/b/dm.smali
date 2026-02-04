.class public Lcom/estrongs/android/ui/b/dm;
.super Lcom/estrongs/fs/b/w;


# instance fields
.field public b:I

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/estrongs/fs/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/fs/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/b/w;-><init>(Ljava/util/List;Lcom/estrongs/fs/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/estrongs/fs/d;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/fs/d;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/fs/b/w;-><init>(Ljava/util/List;Lcom/estrongs/fs/d;Z)V

    return-void
.end method


# virtual methods
.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 5

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/b/dm;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/b/dm;->c:I

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/dm;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/dm;->onProgress(Lcom/estrongs/a/a/i;)V

    :goto_1
    return-void

    :cond_0
    iget v1, p0, Lcom/estrongs/android/ui/b/dm;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/estrongs/android/ui/b/dm;->b:I

    iget-wide v1, p0, Lcom/estrongs/android/ui/b/dm;->d:J

    invoke-interface {v0}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v3

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/estrongs/android/ui/b/dm;->d:J

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/fs/b/w;->handleMessage(I[Ljava/lang/Object;)V

    goto :goto_1
.end method
