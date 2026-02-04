.class final Lcom/estrongs/fs/impl/k/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/k/c;->a:Lcom/estrongs/fs/b/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/k/c;->a:Lcom/estrongs/fs/b/ac;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ac;->execute()V

    return-void
.end method
