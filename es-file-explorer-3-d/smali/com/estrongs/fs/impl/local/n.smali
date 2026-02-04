.class public Lcom/estrongs/fs/impl/local/n;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Process;

.field public b:Ljava/io/BufferedWriter;

.field public c:Ljava/io/BufferedReader;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/n;->a:Ljava/lang/Process;

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/n;->b:Ljava/io/BufferedWriter;

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/n;->c:Ljava/io/BufferedReader;

    iput-boolean v1, p0, Lcom/estrongs/fs/impl/local/n;->d:Z

    iput v1, p0, Lcom/estrongs/fs/impl/local/n;->e:I

    return-void
.end method
