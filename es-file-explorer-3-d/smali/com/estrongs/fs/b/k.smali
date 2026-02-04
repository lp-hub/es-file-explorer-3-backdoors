.class public Lcom/estrongs/fs/b/k;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/estrongs/fs/g;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/g;Ljava/lang/String;J)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/k;-><init>(Lcom/estrongs/fs/g;Ljava/lang/String;JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/g;Ljava/lang/String;JZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/fs/b/k;->c:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/k;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/k;->e:Z

    iput-object p1, p0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    iput-object p2, p0, Lcom/estrongs/fs/b/k;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/estrongs/fs/b/k;->c:J

    iput-boolean p5, p0, Lcom/estrongs/fs/b/k;->d:Z

    return-void
.end method
