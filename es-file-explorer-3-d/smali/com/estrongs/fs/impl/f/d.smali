.class Lcom/estrongs/fs/impl/f/d;
.super Lcom/estrongs/fs/m;


# instance fields
.field final synthetic a:[I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/fs/impl/f/c;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/f/c;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/l;Ljava/lang/String;[ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/f/d;->c:Lcom/estrongs/fs/impl/f/c;

    iput-object p6, p0, Lcom/estrongs/fs/impl/f/d;->a:[I

    iput-object p7, p0, Lcom/estrongs/fs/impl/f/d;->b:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/estrongs/fs/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/l;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/fs/m;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/f/d;->a:[I

    aget v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "item_count"

    iget-object v1, p0, Lcom/estrongs/fs/impl/f/d;->a:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/estrongs/fs/m;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/fs/m;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastModified()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/f/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/d;->b(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/local/b;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method
