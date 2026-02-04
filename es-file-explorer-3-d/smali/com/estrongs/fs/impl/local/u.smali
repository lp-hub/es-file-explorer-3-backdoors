.class Lcom/estrongs/fs/impl/local/u;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;

.field public c:Z

.field public d:Z

.field public e:Ljava/util/Map;

.field public f:Z

.field public g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/estrongs/fs/c;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field final synthetic j:Lcom/estrongs/fs/impl/local/s;


# direct methods
.method private constructor <init>(Lcom/estrongs/fs/impl/local/s;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/fs/impl/local/u;->j:Lcom/estrongs/fs/impl/local/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/local/u;->i:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/fs/impl/local/s;Lcom/estrongs/fs/impl/local/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/local/u;-><init>(Lcom/estrongs/fs/impl/local/s;)V

    return-void
.end method
