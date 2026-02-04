.class Lcom/estrongs/fs/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/estrongs/fs/g;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/fs/d;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/d;[Lcom/estrongs/fs/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/e;->c:Lcom/estrongs/fs/d;

    iput-object p2, p0, Lcom/estrongs/fs/e;->a:[Lcom/estrongs/fs/g;

    iput-object p3, p0, Lcom/estrongs/fs/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/fs/e;->a:[Lcom/estrongs/fs/g;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/fs/e;->c:Lcom/estrongs/fs/d;

    iget-object v3, p0, Lcom/estrongs/fs/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method
