.class public Lcom/estrongs/a/a/b;
.super Lcom/estrongs/a/a/c;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/estrongs/a/a/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/a/a/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/a/a/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/a/a/b;->d:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/estrongs/a/a/b;->h:I

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/a/a/b;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method
