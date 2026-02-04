.class public Lcom/estrongs/a/b/o;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:I

.field private d:Lcom/estrongs/a/b/o;

.field private e:Lcom/estrongs/a/b/o;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/a/b/o;->d:Lcom/estrongs/a/b/o;

    iput-object v0, p0, Lcom/estrongs/a/b/o;->e:Lcom/estrongs/a/b/o;

    iput-object v0, p0, Lcom/estrongs/a/b/o;->a:Ljava/util/List;

    iput-boolean v1, p0, Lcom/estrongs/a/b/o;->b:Z

    iput v1, p0, Lcom/estrongs/a/b/o;->c:I

    iput-object p1, p0, Lcom/estrongs/a/b/o;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/a/b/o;)Lcom/estrongs/a/b/o;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/b/o;->e:Lcom/estrongs/a/b/o;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/a/b/o;Lcom/estrongs/a/b/o;)Lcom/estrongs/a/b/o;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/b/o;->d:Lcom/estrongs/a/b/o;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/a/b/o;Lcom/estrongs/a/b/o;)Lcom/estrongs/a/b/o;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/b/o;->e:Lcom/estrongs/a/b/o;

    return-object p1
.end method
