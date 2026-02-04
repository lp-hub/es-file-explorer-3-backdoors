.class public Lcom/estrongs/fs/b/x;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/estrongs/fs/g;

.field public c:J

.field public d:I

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/fs/b/x;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/estrongs/fs/b/x;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/estrongs/fs/b/x;->c:J

    iput v2, p0, Lcom/estrongs/fs/b/x;->d:I

    iput v2, p0, Lcom/estrongs/fs/b/x;->e:I

    iput-wide v0, p0, Lcom/estrongs/fs/b/x;->f:J

    iput-wide v0, p0, Lcom/estrongs/fs/b/x;->g:J

    iput-wide v0, p0, Lcom/estrongs/fs/b/x;->h:J

    iput-wide v0, p0, Lcom/estrongs/fs/b/x;->i:J

    iput-wide v0, p0, Lcom/estrongs/fs/b/x;->j:J

    iput-wide v0, p0, Lcom/estrongs/fs/b/x;->k:J

    iput-boolean v2, p0, Lcom/estrongs/fs/b/x;->l:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/x;->m:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/x;->n:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/x;->o:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/b/x;->p:Lcom/estrongs/fs/b/x;

    return-void
.end method
