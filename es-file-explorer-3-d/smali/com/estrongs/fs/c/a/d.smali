.class public Lcom/estrongs/fs/c/a/d;
.super Lcom/estrongs/fs/c/a/a;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/c/a/a;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/g;Lcom/estrongs/fs/g;)I
    .locals 4

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/c/a/d;->a(Lcom/estrongs/fs/g;)Z

    move-result v2

    invoke-virtual {p0, p2}, Lcom/estrongs/fs/c/a/d;->a(Lcom/estrongs/fs/g;)Z

    move-result v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/fs/g;

    check-cast p2, Lcom/estrongs/fs/g;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/fs/c/a/d;->a(Lcom/estrongs/fs/g;Lcom/estrongs/fs/g;)I

    move-result v0

    return v0
.end method
