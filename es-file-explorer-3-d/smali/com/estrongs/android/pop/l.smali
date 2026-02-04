.class Lcom/estrongs/android/pop/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/a/o;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a/e;

.field final synthetic b:Lcom/estrongs/a/a;

.field final synthetic c:Lcom/estrongs/android/pop/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/g;Lcom/estrongs/a/a/e;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/l;->c:Lcom/estrongs/android/pop/g;

    iput-object p2, p0, Lcom/estrongs/android/pop/l;->a:Lcom/estrongs/a/a/e;

    iput-object p3, p0, Lcom/estrongs/android/pop/l;->b:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 5

    const/4 v4, 0x5

    const/4 v2, 0x1

    sget v0, Lcom/estrongs/android/a/i;->a:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/l;->a:Lcom/estrongs/a/a/e;

    iget-boolean v0, v0, Lcom/estrongs/a/a/e;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/l;->a:Lcom/estrongs/a/a/e;

    const/4 v1, 0x4

    iput v1, v0, Lcom/estrongs/a/a/e;->g:I

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/l;->a:Lcom/estrongs/a/a/e;

    iput-boolean p2, v0, Lcom/estrongs/a/a/e;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/l;->b:Lcom/estrongs/a/a;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/l;->a:Lcom/estrongs/a/a/e;

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/l;->a:Lcom/estrongs/a/a/e;

    iput v2, v0, Lcom/estrongs/a/a/e;->g:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/estrongs/android/a/i;->b:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/l;->a:Lcom/estrongs/a/a/e;

    const/4 v1, 0x2

    iput v1, v0, Lcom/estrongs/a/a/e;->g:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/l;->a:Lcom/estrongs/a/a/e;

    iput v4, v0, Lcom/estrongs/a/a/e;->g:I

    goto :goto_0
.end method
