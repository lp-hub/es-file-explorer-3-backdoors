.class public Lcom/estrongs/fs/impl/b/f;
.super Lcom/estrongs/fs/impl/local/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/local/b;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/b/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/b/f;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/b/f;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/b/f;->a:Ljava/lang/String;

    return-void
.end method
