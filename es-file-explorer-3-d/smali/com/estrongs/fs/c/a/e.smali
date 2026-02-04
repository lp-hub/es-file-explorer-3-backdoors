.class public Lcom/estrongs/fs/c/a/e;
.super Lcom/estrongs/fs/c/a/a;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/c/a/a;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/g;Lcom/estrongs/fs/g;)I
    .locals 7

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/c/a/e;->b(Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/estrongs/fs/c/a/e;->b(Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/c/a/e;->a(Lcom/estrongs/fs/g;)Z

    move-result v2

    invoke-virtual {p0, p2}, Lcom/estrongs/fs/c/a/e;->a(Lcom/estrongs/fs/g;)Z

    move-result v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    invoke-interface {p1}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v2

    invoke-interface {p2}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    iget v0, p0, Lcom/estrongs/fs/c/a/e;->b:I

    mul-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/fs/c/a/e;->b:I

    mul-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/fs/g;

    check-cast p2, Lcom/estrongs/fs/g;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/fs/c/a/e;->a(Lcom/estrongs/fs/g;Lcom/estrongs/fs/g;)I

    move-result v0

    return v0
.end method
